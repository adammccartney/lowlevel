#include "stdio.h"
#include "string.h"
#include "stdlib.h"

#define MAXCHARS 20

enum Type {
    TYPE_BOOL, 
    /* Unsigned types */
    TYPE_UNSIGNED_CHAR, TYPE_UNSIGNED_SHORT,
    TYPE_UNSIGNED_INT, TYPE_UNSIGNED_LONG,
    TYPE_UNSIGNED_LONG_LONG,

    TYPE_CHAR, TYPE_SHORT, TYPE_INT,
    TYPE_LONG, TYPE_LONG_LONG, TYPE_FLOAT,

    TYPE_DOUBLE, TYPE_LONG_DOUBLE,
    TYPE_FLOAT_COMPLEX, TYPE_DOUBLE_COMPLEX,
    TYPE_LONG_DOUBLE_COMPLEX,

    TYPE_UNKNOWN
};


/* Returns the type contained within a string. */
enum Type classify_string(char* s) 
{
    if (strcmp(s, "bool") == 0)
        return TYPE_BOOL;
    if (strcmp(s, "unsigned char") == 0)
        return TYPE_UNSIGNED_CHAR;
    if (strcmp(s, "unsigned short") == 0)
        return TYPE_UNSIGNED_SHORT;
    if (strcmp(s, "unsigned int") == 0)
        return TYPE_UNSIGNED_INT;
    if (strcmp(s, "unsigned long") == 0)
        return TYPE_UNSIGNED_LONG;
    if (strcmp(s, "unsigned long long") == 0)
        return TYPE_UNSIGNED_LONG_LONG;
    if (strcmp(s, "char") == 0)
        return TYPE_CHAR;
    if (strcmp(s, "short") == 0)
        return TYPE_SHORT;
    if (strcmp(s, "int") == 0)
        return TYPE_INT;
    if (strcmp(s, "long") == 0)
        return TYPE_LONG;
    if (strcmp(s, "long long") == 0)
        return TYPE_LONG_LONG;
    if (strcmp(s, "float") == 0)
        return TYPE_FLOAT;
    if (strcmp(s, "double") == 0)
        return TYPE_DOUBLE;
    if (strcmp(s, "long double") == 0)
        return TYPE_LONG_DOUBLE;
    if (strcmp(s, "float _Complex") == 0)
        return TYPE_FLOAT_COMPLEX;
    if (strcmp(s, "double _Complex") == 0)
        return TYPE_DOUBLE_COMPLEX;
    if (strcmp(s, "long double complex") == 0)
        return TYPE_LONG_DOUBLE_COMPLEX;
    else
        return TYPE_UNKNOWN;
}

/* Print the number of bytes is takes to represent a type t. */
void print_sizeof(enum Type t) 
{
    printf("\n\nSizeof: \n");
    switch (t) {
        case TYPE_BOOL:
            printf("	bool: %ld bytes\n", sizeof(_Bool));
            break;
        case TYPE_UNSIGNED_CHAR:
            printf("	unsigned char: %ld bytes\n", sizeof(unsigned char));
            break;
        case TYPE_UNSIGNED_SHORT:
            printf("	unsigned short: %ld bytes\n", sizeof(unsigned short));
            break;
        case TYPE_UNSIGNED_INT:
            printf("	unsigned int: %ld bytes\n", sizeof(unsigned int));
            break;
        case TYPE_UNSIGNED_LONG:
            printf("	unsigned long: %ld bytes\n", sizeof(unsigned long));
            break;
        case TYPE_UNSIGNED_LONG_LONG:
            printf("	unsigned long long: %ld bytes\n", sizeof(unsigned long long));
            break;
        case TYPE_CHAR:
            printf("	char: %ld bytes\n", sizeof(char));
            break;
        case TYPE_SHORT:
            printf("	short: %ld bytes\n", sizeof(short));
            break;
        case TYPE_INT:
            printf("	int: %ld bytes\n", sizeof(int));
            break;
        case TYPE_LONG:
            printf("	long: %ld bytes\n", sizeof(long));
            break;
        case TYPE_LONG_LONG:
            printf("	long long: %ld bytes\n", sizeof(long long));
            break;
        case TYPE_FLOAT:
            printf("	float: %ld bytes\n", sizeof(float));
            break;
        case TYPE_DOUBLE:
            printf("	double: %ld bytes\n", sizeof(double));
            break;
        case TYPE_LONG_DOUBLE:
            printf("	long double: %ld bytes\n", sizeof(long double));
            break;
        case TYPE_FLOAT_COMPLEX:
            printf("	float _Complex: %ld bytes\n", sizeof(float _Complex));
            break;
        case TYPE_DOUBLE_COMPLEX:
            printf("	double _Complex: %ld bytes\n", sizeof(double _Complex));
            break;
        case TYPE_LONG_DOUBLE_COMPLEX:
            printf("	long double _Complex: %ld bytes\n", sizeof(long double _Complex));
            break;
        default: printf("unknown\n");
    }
    }


int main(int argc, char* argv[]) {

    char* type = malloc(MAXCHARS * sizeof(char));
    char* auxtype = malloc(MAXCHARS * sizeof(char));
    enum Type t;
    if ((argc <= 1) || (argc >= 3)) {
        printf("Usage: sizeof <type>");
    }
    if (argc == 4) {
        auxtype = strcat(argv[2], argv[3]);
        type = strcat(argv[1], auxtype);
    }
    if (argc == 3) {
        type = strcat(argv[1], argv[2]);
    }
    if (argc == 2) {
        strncpy(type, argv[1], MAXCHARS * sizeof(char));
    }
    t = classify_string(type);
    print_sizeof(t);
    free(type);
    free(auxtype);
    return 0;
}

