#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>

#include <unistd.h>
#include <regex.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sha1.h>

#include "beargit.h"
#include "util.h"

/* Implementation Notes:
 *
 * - Functions return 0 if successful, 1 if there is an error.
 * - All error conditions in the function description need to be implemented
 *   and written to stderr. We catch some additional errors for you in main.c.
 * - Output to stdout needs to be exactly as specified in the function description.
 * - Only edit this file (beargit.c)
 * - Here are some of the helper functions from util.h:
 *   * fs_mkdir(dirname): create directory <dirname>
 *   * fs_rm(filename): delete file <filename>
 *   * fs_mv(src,dst): move file <src> to <dst>, overwriting <dst> if it exists
 *   * fs_cp(src,dst): copy file <src> to <dst>, overwriting <dst> if it exists
 *   * write_string_to_file(filename,str): write <str> to filename (overwriting contents)
 *   * read_string_from_file(filename,str,size): read a string of at most <size> (incl.
 *     NULL character) from file <filename> and store it into <str>. Note that <str>
 *     needs to be large enough to hold that string.
 *  - You NEED to test your code. The autograder we provide does not contain the
 *    full set of tests that we will run on your code. See "Step 5" in the project spec.
 */
// Commit msg will always be 'THIS IS BEAR TERRITORY!'
#define MSG_LENGTH (23)
#define BASEDIR_LEN (8)
#define ORIG_OFFSET (40)
#define MAXLINE (2048)
#define INIT_COMMIT_ID "0000000000000000000000000000000000000000"

/* beargit init
 *
 * - Create .beargit directory
 * - Create empty .beargit/.index file
 * - Create .beargit/.prev file containing 0..0 commit id
 *
 * Output (to stdout):
 * - None if successful
 */

int beargit_init(void) {
  fs_mkdir(".beargit");

  FILE* findex = fopen(".beargit/.index", "w");
  fclose(findex);

  FILE* fbranches = fopen(".beargit/.branches", "w");
  fprintf(fbranches, "%s\n", "master");
  fclose(fbranches);

  write_string_to_file(".beargit/.prev", "0000000000000000000000000000000000000000");
  write_string_to_file(".beargit/.current_branch", "master");

  return 0;
}



/* beargit add <filename>
 *
 * - Append filename to list in .beargit/.index if it isn't in there yet
 *
 * Possible errors (to stderr):
 * >> ERROR:  File <filename> has already been added.
 *
 * Output (to stdout):
 * - None if successful
 */

int beargit_add(const char* filename) {
  FILE* findex = fopen(".beargit/.index", "r");
  FILE *fnewindex = fopen(".beargit/.newindex", "w");

  char line[FILENAME_SIZE];
  while(fgets(line, sizeof(line), findex)) {
    strtok(line, "\n");
    if (strcmp(line, filename) == 0) {
      fprintf(stderr, "ERROR:  File %s has already been added.\n", filename);
      fclose(findex);
      fclose(fnewindex);
      fs_rm(".beargit/.newindex");
      return 3;
    }

    fprintf(fnewindex, "%s\n", line);
  }

  fprintf(fnewindex, "%s\n", filename);
  fclose(findex);
  fclose(fnewindex);

  fs_mv(".beargit/.newindex", ".beargit/.index");

  return 0;
}

int count_filenames_in_index()
{
	size_t len;
	FILE* findex = fopen(".beargit/.index", "r");
	if (findex == NULL) {
		fprintf(stderr, "fopen error\n");
		exit(1);
	}

	int fcount = 0;
	ssize_t read = 0;
	char* line = NULL;
	while ((read = getline(&line, &len, findex)) != -1) {
		fcount++;
	}
	free(line);
	fclose(findex);
	return fcount;
}

/* beargit status
 *
 * See "Step 1" in the project spec.
 *
 */

int beargit_status() {
  size_t len;
  FILE* findex = fopen(".beargit/.index", "r");
  if (findex == NULL) {
	  fprintf(stderr, "fopen error\n");
	  exit(1);
  }

  fprintf(stdout, "Tracked files:\n\n");
  int fcount = 0;
  ssize_t read = 0;
  char* line = NULL;
  fcount = count_filenames_in_index();
  while ((read = getline(&line, &len, findex)) != -1) {
	printf("%s", line);
  }
  // print total number of files in index
  printf("\n%d files total\n", fcount);
  fclose(findex);
  free(line);

  return 0;
}

/* beargit rm <filename>
 *
 * - Remove filename from list in .beargit/.index if it is found.
 * 
 * Possible errors (to stderr):
 * beargit rm FILE_THAT_IS_NOT_TRACKED.txt
 * ERROR:  File <filename> not tracked.
 *
 * Output (to stdout):
 * - None if successful
 */

int beargit_rm(const char* filename) {
	FILE* findex = fopen(".beargit/.index", "r");
	FILE* fnewindex = fopen(".beargit/.newindex", "w");
	int fnames = 0;
	int lines = 0;

	char line[FILENAME_SIZE];
	while (fgets(line, sizeof(line), findex)) {
		strtok(line, "\n");
		lines++;
		if (strcmp(line, filename) != 0) {
			fprintf(fnewindex, "%s\n", line);
			fnames++;
		}
	}
	if (fnames == lines) {
		fprintf(stderr, "ERROR: File %s not tracked.\n", filename);
		fclose(findex);
		fclose(fnewindex);
		fs_rm(".beargit/.newindex");
		return 3;
	}

	fclose(findex);
	fclose(fnewindex);
	fs_mv(".beargit/.newindex", ".beargit/.index");

	return 0;
}

/* beargit commit -m <msg>
 *
 * See "Step 3" in the project spec.
 *
 */

const char* go_bears = "THIS IS BEAR TERRITORY!";

int is_commit_msg_ok(const char* msg) {
	int len = strlen(go_bears);
	if (memcmp(go_bears, msg, len) != 0)
		return 0;
	return 1;
}

/* Use next_commit_id to fill in the rest of the commit ID.
 *
 * Hints:
 * You will need a destination string buffer to hold your next_commit_id, before you copy it back to commit_id
 * You will need to use a function we have provided for you.
 */

void next_commit_id(char* commit_id) 
{
	char buffer[MSG_SIZE];
	/* Take the commit_id and prepend it to the front of the buffer */
	memcpy(&buffer, commit_id, ORIG_OFFSET);
	/* Append commit msg to buffer */
	memcpy(&buffer[ORIG_OFFSET], go_bears, MSG_LENGTH);
	/* Append branch name to buffer */
	char current_branch[BRANCHNAME_SIZE];
	read_string_from_file(".beargit/.current_branch", current_branch, BRANCHNAME_SIZE); 
	memcpy(&buffer[ORIG_OFFSET + MSG_LENGTH], current_branch, BRANCHNAME_SIZE);
	/* Hash the commit */
	cryptohash((const char *)&buffer, commit_id);
}

static void copy_files_to_tree(const char* new_node)
{
	/* For each file in index; copy file -> .beargit/<commit_id>/file */
	FILE* findex = fopen(".beargit/.index", "r");
	if (findex == NULL) {
	      fprintf(stderr, "fopen error\n");
	      exit(1);
	}
	char line[FILENAME_SIZE];
	char* cwd = ".";
	while (fgets(line, sizeof(line), findex)) {
		strtok(line, "\n");
		char old_leaf[FILENAME_SIZE + 4];	
		snprintf(old_leaf, FILENAME_SIZE + 4, "./%s", line);
		char new_leaf [FILENAME_SIZE + 4];
		snprintf(new_leaf, FILENAME_SIZE + 4, "%s/%s", new_node, line);
		fs_cp(old_leaf, new_leaf);
	}
	fclose(findex);
}

int beargit_commit(const char* msg) 
{
	if (!is_commit_msg_ok(msg)) {
		fprintf(stderr, "ERROR:  Message must contain \"%s\"\n", go_bears);
		return 1;
	}

	char commit_id[COMMIT_ID_SIZE];
	read_string_from_file(".beargit/.prev", commit_id, COMMIT_ID_SIZE);
	next_commit_id(commit_id);

	/* Create directory .beargit/<commit_id> */
	char new_node[BASEDIR_LEN + COMMIT_ID_SIZE + 1];
	sprintf(new_node, ".beargit/%s", commit_id);
	fs_mkdir(new_node); 

	/* Copy .beargit/.prev -> .beargit/<commit_id>/.prev */
	char new_prev[FILENAME_SIZE];
	snprintf(new_prev, FILENAME_SIZE, "%s/.prev", new_node);
	fs_cp(".beargit/.prev", new_prev); 
	
	/* Copy .beargit/.index -> .beargit/<commit_id>/.index */
	char new_index[FILENAME_SIZE];
	snprintf(new_index, FILENAME_SIZE, "%s/.index", new_node);
	fs_cp(".beargit/.index", new_index);

	/* Write go_bears -> .beargit/<commit_id>/.msg */
	char new_msg[FILENAME_SIZE];
	snprintf(new_msg, FILENAME_SIZE, "%s/.msg", new_node); 
	write_string_to_file(new_msg, go_bears);
	copy_files_to_tree(new_node);

	/* Write <commit_id> -> .beargit/.prev */
	FILE *fnewprev = fopen(".beargit/.newprev", "w");
	write_string_to_file(".beargit/.newprev", commit_id);
	fs_mv(".beargit/.newprev", ".beargit/.prev");
	fclose(fnewprev);
	return 0;
}

int is_initial_commit(const char* commit_id)
{
	int res = 0;
	if ((res = memcmp(INIT_COMMIT_ID, commit_id, COMMIT_ID_SIZE)) == 0)
		return 1;
	return 0;
}

/* If ftype is a valid file, 
 * set string to path 
 * otherwise set path to NULL */
void nextf(char** bufp, char* ftype, char* commit_id)
{
	char* buf = NULL;
	buf = malloc(BASEDIR_LEN + ORIG_OFFSET + 8);
	int res = 0;
	if ((res = memcmp(".prev", ftype, 6)) == 0)
		sprintf(buf, ".beargit/%s/.prev", commit_id);
	if ((res = memcmp(".msg", ftype, 5)) == 0)
		sprintf(buf, ".beargit/%s/.msg", commit_id);
	if ((res = memcmp(".index", ftype, 7)) == 0)
		sprintf(buf, ".beargit/%s/.index", commit_id);
	*bufp = buf;
}


/* beargit log
 *
 * See "Step 4" in the project spec.
 *
 */

int beargit_log(int limit) {
  /* COMPLETE THE REST */
	/* If we find the -n flag, parse the number of log items */
	/* In a loop, visit each node in the tree of .beargit
	 * 
	 * start by reading the previous commit sha from 
	 * start <commit_id> <- .beargit/.prev
	 * visit <commit_id> <- .beargit/<commit_id>/.prev
	 * */
	char commit_id[COMMIT_ID_SIZE];
	read_string_from_file(".beargit/.prev", commit_id, COMMIT_ID_SIZE);
	if (is_initial_commit(commit_id)) {
	      fprintf(stderr, "ERROR:  There are no commits.\n");
	      return 1;
	}
	int count = 0;
	while ((!is_initial_commit(commit_id)) && (count < limit)) {
		printf("commit %s\n", commit_id);
		printf("    %s\n\n", go_bears);
		count++;
		char* fprev;
		nextf(&fprev, ".prev", commit_id);
		read_string_from_file(fprev, commit_id, COMMIT_ID_SIZE);
	}
  return 0;
}


// This helper function returns the branch number for a specific branch, or
// returns -1 if the branch does not exist.
int get_branch_number(const char* branch_name) {
  FILE* fbranches = fopen(".beargit/.branches", "r");

  int branch_index = -1;
  int counter = 0;
  char line[FILENAME_SIZE];
  while(fgets(line, sizeof(line), fbranches)) {
    strtok(line, "\n");
    if (strcmp(line, branch_name) == 0) {
      branch_index = counter;
    }
    counter++;
  }

  fclose(fbranches);

  return branch_index;
}

/* beargit branch
 *
 * See "Step 5" in the project spec.
 *
 */

int beargit_branch() {
	/* Read current branch */
	char current_branch[BRANCHNAME_SIZE];
	read_string_from_file(".beargit/.current_branch", current_branch, BRANCHNAME_SIZE); 
	size_t len;
	FILE* fbranches = fopen(".beargit/.branches", "r");
	if (fbranches == NULL) {
	        fprintf(stderr, "fopen error\n");
	        exit(1);
	}

	ssize_t read = 0;
	char* line = NULL;
	int cmp = 0;
	while ((read = getline(&line, &len, fbranches)) != -1) {
		strtok(line, "\n");
		if ((cmp = memcmp(current_branch, line, strlen(line))) == 0) {
			printf("*   "); /* mark the current branch */
		} else {
			printf("    ");
		}
		printf("%s\n", line);
	}
	fclose(fbranches);

	return 0;
}

/* beargit checkout
 *
 * See "Step 6" in the project spec.
 *
 */

static void map_fn_over_index(void (*fun_ptr)(const char*))
{
	/* read index */
	/* apply fn to each file */
	FILE* findex = fopen(".beargit/.index", "r");
	if (findex == NULL) {
		fprintf(stderr, "fopen error\n");
		exit(1);
	}

	char line[FILENAME_SIZE];
	while (fgets(line, sizeof(line), findex)) {
		strtok(line, "\n");
		fun_ptr(line);
	}
	fclose(findex);
}

int checkout_commit(const char* commit_id) {
	/* first clear all index files */
	void (*fs_rm_ptr)(const char*) = fs_rm;
	map_fn_over_index(fs_rm_ptr);
	/* create string ".beargit/<commit_id>" */
	char commit_node[BASEDIR_LEN + COMMIT_ID_SIZE + 1];
	sprintf(commit_node, ".beargit/%s", commit_id);
	char commit_index[BASEDIR_LEN + COMMIT_ID_SIZE + 8];
	sprintf(commit_index, ".beargit/%s/.index", commit_id);

	FILE* findex = fopen(commit_index, "r");
	if (findex == NULL) {
	        fprintf(stderr, "fopen error\n");
	        exit(1);
	}

	size_t len;
	ssize_t read = 0;
	char* line = NULL;
	char* repo_root = ".";
	while ((read = getline(&line, &len, findex)) != -1) {
		strtok(line, "\n");
		/* foreach file in ".beargit/<commit_id>/.index */
	        /*   do copy ".beargit/<commit_id>/file" -> "./file" */
		char indexf[FILENAME_SIZE];
		snprintf(indexf, FILENAME_SIZE, "%s/%s", commit_node, line);
		char checkoutf[FILENAME_SIZE]; /* ./<line> */
		snprintf(checkoutf, FILENAME_SIZE, "%s/%s", repo_root, line);
		fs_cp(indexf, checkoutf);
	}
	fclose(findex);
	free(line);

	/* copy index file */
	fs_cp(commit_index, ".beargit/.index");	
	/* Write <commit_id> -> .beargit/.prev */
	FILE *fnewprev = fopen(".beargit/.newprev", "w");
	write_string_to_file(".beargit/.newprev", commit_id);
	fs_mv(".beargit/.newprev", ".beargit/.prev");
	fclose(fnewprev);

	return 0;
}

int is_it_a_commit_id(const char* commit_id) {
	regex_t    regex;
	int true = 1;
	int false = 0;
	int res = -1;
	if (commit_id == NULL)
		goto done;

	static const char *const re = "^[0-9A-Fa-f]{40}";
	if (regcomp(&regex, re, REG_EXTENDED)) {
		fprintf(stderr, "ERROR: could not compile regex\n");
		exit(EXIT_FAILURE);
	}

	const char* s = commit_id;

	res = regexec(&regex, commit_id, 0, NULL, 0);
done:
	if (0==res) 
		return true;
	return false;
}

int beargit_checkout(const char* arg, int new_branch)
{
	// Get the current branch 
	char current_branch[BRANCHNAME_SIZE];
	read_string_from_file(".beargit/.current_branch", current_branch, BRANCHNAME_SIZE);

	// If not detached, leave the current branch by storing the current HEAD into that branch's file...
	if (strlen(current_branch)) {
		char current_branch_file[BRANCHNAME_SIZE+50];
		sprintf(current_branch_file, ".beargit/.branch_%s", current_branch);
		fs_cp(".beargit/.prev", current_branch_file);
	}

	// Check whether the argument is a commit ID. If yes, we just change to detached map_fn_over_index
	// without actually having to change into any other branch.
	if (is_it_a_commit_id(arg)) {
		char commit_dir[FILENAME_SIZE] = ".beargit/";
		strcat(commit_dir, arg);
		// ...and setting the current branch to none (i.e., detached).
		write_string_to_file(".beargit/.current_branch", "");
		return checkout_commit(arg);
	}

	// Read branches file (giving us the HEAD commit id for that branch).
	int branch_exists = (get_branch_number(arg) >= 0);

	// Check for errors.
	if (!(!branch_exists || !new_branch)) {
		fprintf(stderr, "ERROR:  A branch named %s already exists.\n", arg);
		return 1;
	} 
	if (!branch_exists && !new_branch) {
		fprintf(stderr, "ERROR:  No branch or commit %s exists.\n", arg);
		return 1;
	} 

	// Just a better name, since we now know the argument is a branch name.
	const char* branch_name = arg;

	// File for the branch we are changing into.
	char branch_file[FILENAME_SIZE] = ".beargit/.branch_";
	strcat(branch_file, branch_name);

	// Update the branch file if new branch is created (now it can't go wrong anymore)
	if (new_branch) {
		FILE* fbranches = fopen(".beargit/.branches", "a");
		fprintf(fbranches, "%s\n", branch_name);
		fclose(fbranches);
		fs_cp(".beargit/.prev", branch_file);
	}

	write_string_to_file(".beargit/.current_branch", branch_name);

	// Read the head commit ID of this branch.
	char branch_head_commit_id[COMMIT_ID_SIZE];
	read_string_from_file(branch_file, branch_head_commit_id, COMMIT_ID_SIZE);

	// Check out the actual commit.
	return checkout_commit(branch_head_commit_id);
}

int file_exists(char* filename)
{
	int true = 1;
	int false = 0;
	if (access(filename, F_OK) == 0) {
		return true;
	} else {
		return false;
	}
}

int file_in_current_index(const char* filename)
{
	int true = 1;
	int false = 0;
	FILE* findex = fopen(".beargit/.index", "r");
	if (findex == NULL) {
	      fprintf(stderr, "fopen error\n");
	      exit(1);
	}
	char line[FILENAME_SIZE];
	while(fgets(line, sizeof(line), findex)) {
		strtok(line, "\n");
		if (memcmp(line, filename, strlen(filename)) == 0)
			return true;
	}
      fclose(findex);
      return false;
}

/* beargit reset
 *
 * See "Step 7" in the project spec.
 *
 */

int beargit_reset(const char* commit_id, const char* filename) 
{
	if (!is_it_a_commit_id(commit_id)) {
		fprintf(stderr, "ERROR:  Commit %s does not exist.\n", commit_id);
		return 1;
	}

	// Check if the file is in the commit directory
	/* create string ".beargit/<commit_id>" */
	char commit_node[BASEDIR_LEN + COMMIT_ID_SIZE + 1];
	sprintf(commit_node, ".beargit/%s", commit_id);
	char fname[FILENAME_SIZE];
	snprintf(fname, FILENAME_SIZE, "%s/%s", commit_node, filename);
	char target[FILENAME_SIZE];
	sprintf(target, "./%s", filename);
	if (!file_exists(fname)) {
	        fprintf(stderr, "ERROR:  %s is not in the index of commit %s.\n", filename, commit_id);
	        return 1;
	}		
	// Copy the file to the current working directory
	fs_cp(fname, target);

	// Add the file if it wasn't already there
	if (!file_in_current_index(filename))
		beargit_add(filename);

	return 0;
}

/* beargit merge
 *
 * See "Step 8" in the project spec.
 *
 */

int beargit_merge(const char* arg) {
	// Get the commit_id or throw an error
	char commit_id[COMMIT_ID_SIZE];
	if (!is_it_a_commit_id(arg)) {
	    if (get_branch_number(arg) == -1) {
	          fprintf(stderr, "ERROR:  No branch or commit %s exists.\n", arg);
	          return 1;
	    }
	    char branch_file[FILENAME_SIZE];
	    snprintf(branch_file, FILENAME_SIZE, ".beargit/.branch_%s", arg);
	    read_string_from_file(branch_file, commit_id, COMMIT_ID_SIZE);
	} else {
	    snprintf(commit_id, COMMIT_ID_SIZE, "%s", arg);
	}

	// Iterate through each line of the commit_id index and determine how you
	// should copy the index file over
	char cindexfile[FILENAME_SIZE];
	snprintf(cindexfile, FILENAME_SIZE, ".beargit/%s/.index", commit_id);
	FILE* cfindex = fopen(cindexfile, "r");
	if (cfindex == NULL) {
	            fprintf(stderr, "fopen error\n");
			/* add file to index */
	            exit(1);
	}
	char line[FILENAME_SIZE];
	while(fgets(line, sizeof(line), cfindex)) {
		strtok(line, "\n");
		char workfile[FILENAME_SIZE + 4];
		snprintf(workfile, FILENAME_SIZE + 4, "./%s", line);
		char cfile[FILENAME_SIZE * 2];
		snprintf(cfile, FILENAME_SIZE * 2, ".beargit/%s/%s", commit_id, line);
		if (file_in_current_index(line)) {
			/* make additional copy */
			char addfile[FILENAME_SIZE * 2];
			snprintf(addfile, FILENAME_SIZE * 2, "%s.%s", workfile, commit_id);
			fs_cp(cfile, addfile);
			printf("%s conflicted copy created\n", line);
		} else {
			beargit_add(line);
			printf("%s added\n", line); 
			fs_cp(cfile, workfile);
		}
	}
	fclose(cfindex);

	return 0;
}
