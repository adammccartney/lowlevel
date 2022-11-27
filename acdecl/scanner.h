#ifndef acdecl_scanner_h
#define acdecl_scanner_h

#include "common.h"

/* typically we would use an enum to store the different types */
enum TokenTag {
        /* Single-character tokens */
        TOKEN_POINTER,
        /* Non-alphanumeric */
        TOKEN_LEFT_PARENS, TOKEN_RIGHT_PARENS,
        TOKEN_LEFT_BRACKET, TOKEN_RIGHT_BRACKET,
        /* Multi-char tokens */
        TOKEN_TYPE, TOKEN_QUALIFIER, TOKEN_IDENTIFIER,

        TOKEN_ERROR, TOKEN_EOF
};


/* holds tokens we read before reaching first identifier */
struct Token {
        enum TokenTag type;
        const char* start;
        int length;
};

/* Given a type and a string, form a token using this info. */
static struct Token make_token(enum TokenTag);

static _Bool isPointer(char c) { return c == '*'; }

/*
  look at the current token and
  return a value of "type" "qualifier" or "identifier" in this.type
 */
enum TokenTag classify_string();

/* Read the string starting at pointer p.
   Return a newly created token once it has been identified.
 */
struct Token gettoken();

/* Initialize the scanner */
void initScanner(const char* decl);

#endif
