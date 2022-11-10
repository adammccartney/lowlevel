#include <stdio.h>

       

/* Utility routines */


/*  
read_to_first_identifier
    gettoken and push it onto the stack until the first identifier is read.
    Print "identifier is", this .string
    gettoken

// Parsing routines
deal_with_function_args
    read past closing ')' print out "function returning"
deal_with_arrays
    while you've got "[size]" print it out a read past it
deal_with_any_pointers
    while you've got "*" on the stack print "pointer to" and pop it
deal_with_declarator
    if this.type is '[' deal_with_arrays
    if this.type is ']' deal_with_function_args
    deal_with_pointers
    while there's stuff on the stack
    if it's a '('
    pop it and gettoken; it should be the closing ')'
    deal_with_declarator
    else pop it and print it
*/


// main routine
int main(int argc, char* argv[]) {

        printf("Welcome to adecl, a translator for c declarations.\n");

        //char *p = this.string; 
        //while ((*p = getchar()) != EOF);
        //printf("%s", p);

        //struct token test;
        //test.type = TOKEN_LEFT_PAREN;
        //char* p;
        //p = strcpy(this.string, input); 

        //printf("Token: %d, identifier: %s\n", this.type, this.string);

        
        /* read_to_first_identifier */
        /* deal_with_declarator */
        return 0;
}
