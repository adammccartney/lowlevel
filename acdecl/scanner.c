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

struct Scanner scanner;

void initScanner(const char* decl) {
        scanner.start = decl;
        scanner.current = decl;
}

enum token_tag classify_string() {
        char *s = (char*)this.type; /* cast an int to char pointer */
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

struct token gettoken() {
        char *p;
        /* Read past white spaces */
        while ((*p = getchar()) == ' ' || *p == '\t');

        scanner.start = scanner.current;
        
        /* is alphanumeric */
        if (isalnum(*p)) {
                /* Type, identifier or qualifier */
                current.type = classify_string();
        }

        /* is single character token */
        if (isPointer(*p)) {
                current.type = TOKEN_POINTER;
        }
        
        if (*p == '(') { /* Is left Parens */
                current.type = TOKEN_LEFT_PARENS;
        }

        if (*p == ')') { /* Is right Parens */
                current.type = TOKEN_RIGHT_PARENS;
        }

        if (*p == '[') { /* Is Left Bracket */
                current.type = TOKEN_LEFT_BRACKET;
        }

        if (*p == ']') { /* Is Right Bracket */
                current.type = TOKEN_RIGHT_BRACKET;
        }

        /* Return the newly identified token */
        return current;
}
