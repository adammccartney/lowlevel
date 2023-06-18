/* intro.c examples of simple linked list structures, based on the ones used in
 * vol.1 of Knuth's AOCP */
#include <stdio.h>
#include <stdint.h>

struct card {
	struct card* next;
	uint8_t tag;  /* 0x80 face-down */
	uint8_t suit; /* SUIT = 1, 2, 3, 4 for clubs, diamonds, hearts, spades */
	uint8_t rank; /* RANK = 1, 2, ..., 13 for ace, deuce, ..., king */
	char* title;
};

/* Append a card to list */
struct card* append (struct card* top, struct card* new) 
{
	new->next = top;
	top = new;
	return top;
}

/* Display card list */
void display (struct card* top)
{
	struct card* current = top;
	printf("Cards in pile:\n");
	do {
		printf("  %s\n", current->title);
		current = current->next;
	} while(current != NULL);
}

int main(void)
{
	struct card c1 = { 
		.next = NULL, 
		.tag = 0x80, /* face down */
		.suit = 1,   /* clubs */
		.rank = 10,  /* ten */ 
		.title = " 10 C"
	};

	struct card c2 = {
		.next = NULL,
		.tag = 0x00, /* face up */
		.suit = 4,   /* spades */
		.rank = 3,   
		.title = "  3 S"
	};

	struct card c3 = {
		.next = NULL,
		.tag = 0x00, /* face up */
		.suit = 2,   /*  diamonds */
		.rank = 2,   
		.title = "  2 D"
	};
	struct card* top = NULL; 
	struct card* new = NULL;

	struct card* pile[3] = {&c1,&c2,&c3};

	for (int i = 0; i < 3; i++) {
		new = pile[i];
		top = append(top, new);
	}

	display(top);
	return 0;
};
	



