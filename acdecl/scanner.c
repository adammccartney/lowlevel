#include <ctype.h>
#include <stdio.h>
#include <string.h>

#include "common.h"
#include "scanner.h"

struct token stack[MAXTOKENS];
int top = -1;
#define pop stack[top--];
#define push(s) stack[++top]=s;

/* holds the token just read */
struct token this;

struct scanner {
        const char* start;
        const char* current;
};

struct scanner Scanner;

void initScanner(const char* decl) {
        Scanner.start = decl;
        Scanner.current = decl;
}

/* Read the string s and classify it.*/
enum token_tag classify_string(char * s) {
        /* is type ? */
        if (strcmp(s, "_Bool") == 0) return TOKEN_TYPE;
        if (strcmp(s, "unsigned") == 0) return TOKEN_TYPE;
        if (strcmp(s, "char") == 0) return TOKEN_TYPE;
        if (strcmp(s, "short") == 0) return TOKEN_TYPE;
        if (strcmp(s, "int") == 0) return TOKEN_TYPE;
        if (strcmp(s, "long") == 0) return TOKEN_TYPE;
        if (strcmp(s, "signed") == 0) return TOKEN_TYPE;
        if (strcmp(s, "float") == 0) return TOKEN_TYPE;
        if (strcmp(s, "complex") == 0) return TOKEN_TYPE;
        if (strcmp(s, "struct") == 0) return TOKEN_TYPE;
        if (strcmp(s, "union") == 0) return TOKEN_TYPE;
        if (strcmp(s, "enum") == 0) return TOKEN_TYPE;
        /* is qualifier? */
        if (strcmp(s, "const")== 0) return TOKEN_QUALIFIER;
        if (strcmp(s, "volatile") == 0) return TOKEN_QUALIFIER;
        /* Default is the string is an identifier */
        return TOKEN_IDENTIFIER;
}


/* makeToken could be defined and used to tidy up the output of this function */
struct token make_token(struct token t, int type,
                        char * string) {
        t.type = type;
        strcpy(t.string, string);
        return t;
}


struct token gettoken(char *p) {
        /* Read past white spaces */
        while ((*p = getchar()) == ' ' || *p == '\t');

        Scanner.start = Scanner.current;
        struct token t;
        
        /* is alphanumeric */
        if (isalnum(*p)) {
                /* Type, identifier or qualifier */
                int toktype;
                toktype = classify_string(p);
                t = make_token(t, toktype, p);
        }

        /* is single character token */
        if (isPointer(*p)) {
                t = make_token(t, TOKEN_POINTER, p);
        }
        
        if (*p == '(') { /* Is left Parens */
                t = make_token(t, TOKEN_LEFT_PARENS, p);
                }

        if (*p == ')') { /* Is right Parens */
                t = make_token(t, TOKEN_RIGHT_PARENS, p);
        }

        if (*p == '[') { /* Is Left Bracket */
                t = make_token(t, TOKEN_LEFT_BRACKET, p);
        }

        if (*p == ']') { /* Is Right Bracket */
                t = make_token(t, TOKEN_RIGHT_BRACKET, p);
          }

        /* Return the newly identified token */
        return t;
}
