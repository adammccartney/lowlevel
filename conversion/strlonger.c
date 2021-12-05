/* strlonger.c: determines the longer of two strings 

   Licensed under GNU General Public License v2 or later.
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Determine whter string s is longer than string t 
 * WARNING: This function is buggy
 * */
void strlonger(char *s, char *t) {
    char *lstr;
    int diff;
    lstr = (strlen(s) > strlen(t)) ? s : t; 
    diff = strlen(s) - strlen(t);
    if (diff > 0) {
        printf("%s is the longer string by %d chars\n", lstr, diff);
    }
    if (diff == 0)
        printf("%s and %s are of equal length\n", s, t);
    if (diff < 0) { 
        diff = strlen(t) - strlen(s);
        printf("%s is the longer string by %d chars\n", lstr, diff);
    } 
}

int main (int argc, char* argv[]) {
    char *s, *t;

    if (argc < 2) {
        fprintf(stderr, "Usage: %s <str1> <str2>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    if (argc == 3) { 
        s = argv[1];
        t = argv[2];
        strlonger(s, t);
    }

    return 0;
}
