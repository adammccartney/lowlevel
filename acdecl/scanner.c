#include <ctype.h>
#include <stdio.h>
#include <string.h>

#include "common.h"
#include "scanner.h"

struct Token stack[MAXTOKENS];
int top = -1;
#define pop stack[top--];
#define push(s) stack[++top]=s;

/* holds the token just read */
struct Token this;

struct Scanner {
  const char *start;
  const char *current;
};

struct Scanner scanner;

void initScanner(const char *decl) {
  scanner.start = decl;
  scanner.current = decl;
}

/* makeToken could be defined and used to tidy up the output of this
 * function */
static struct Token make_token(enum TokenTag type) {
  struct Token tok;
  tok.type = type;
  tok.start = scanner.start;
  tok.length = (int)(scanner.current - scanner.start);
  return tok;
}

static struct Token errorToken(const char *message) {
  struct Token token;
  token.type = TOKEN_ERROR;
  token.start = message;
  token.length = (int)strlen(message);
  return token;
}

static _Bool isAtEnd() { return *scanner.current == '\0'; }

static char advance() {
  scanner.current++;
  return scanner.current[-1];
}

static char peek() { return *scanner.current; }

static void skipWhitespace() {
  for (;;) {
    char c = peek();
    switch (c) {
    case ' ':
    case '\t':
      advance();
      break;
    default:
      return;
    }
  }
}

static enum TokenTag identifier() {
  while (isalnum(peek()))
    advance();
  return classify_string();
}

static enum TokenTag checkKeyword(int start, int length, const char *rest,
                                  enum TokenTag type) {
    if (scanner.current - scanner.start == start + length &&
        memcmp(scanner.start + start, rest, length) == 0) {
        return type;
    }            
    return TOKEN_IDENTIFIER;
}

/* Read the string s and classify it.*/
enum TokenTag classify_string() {
  switch (scanner.start[0]) {
  case 'c':
    if (scanner.current - scanner.start > 1) {
      switch (scanner.start[1]) {
      case 'h': return checkKeyword(2, 2, "ar", TOKEN_TYPE);
      case 'o':
        switch (scanner.start[2]) {
        case 'm': return checkKeyword(3, 4, "plex", TOKEN_TYPE);
        case 'n': return checkKeyword(2, 3, "nst", TOKEN_QUALIFIER);
        }
      }
    }
    break;
  case 'e': return checkKeyword(1, 3, "num", TOKEN_TYPE);
  case 'f': return checkKeyword(1, 4, "loat", TOKEN_TYPE);
  case 'i': return checkKeyword(1, 2, "nt", TOKEN_TYPE);
  case 's':
    if (scanner.current - scanner.start > 1) {
      switch (scanner.start[1]) {
      case 'h': return checkKeyword(2, 2, "ar", TOKEN_TYPE);
      case 'i': return checkKeyword(2, 4, "gned", TOKEN_TYPE);
      case 't': return checkKeyword(2, 4, "ruct", TOKEN_TYPE);
      }
    }
    break;
  case 'u':
    if (scanner.current - scanner.start > 1) {
      switch (scanner.start[1]) {
      case 'n':
        switch (scanner.start[2]) {
        case 'i': return checkKeyword(3, 2, "on", TOKEN_TYPE);
        case 's': return checkKeyword(3, 5, "igned", TOKEN_TYPE);
        }
      }
    }
    break;
  case 'v': return checkKeyword(2, 7, "olatile", TOKEN_QUALIFIER);
  }
  return TOKEN_IDENTIFIER; /* default is the string is an identifier */
}

struct Token gettoken() {
  skipWhitespace();

  scanner.start = scanner.current;

  if (isAtEnd())
    return make_token(TOKEN_EOF);

  char c = advance();
  /* is alphanumeric */
  if (isalnum(c)) return make_token(identifier());
  if (isPointer(c)) {
    return make_token(TOKEN_POINTER);
  }

  switch (c) {
  case '(':
    return make_token(TOKEN_LEFT_PARENS);
  case ')':
    return make_token(TOKEN_RIGHT_PARENS);
  case '[':
    return make_token(TOKEN_LEFT_BRACKET);
  case ']':
    return make_token(TOKEN_RIGHT_BRACKET);
  }

  /* Return the newly identified token */
  return errorToken("Unexpected character.");
}
