/* linked_stack.c */
#include <stdlib.h>
#include <stdio.h>

struct node {
	struct node* link;
	int info;
};

struct node* top = NULL;

/* Push an item "down" onto the stack */
void push(int val)
{
	struct node* new_node = (struct node*)malloc(sizeof(struct node));
	if (new_node == NULL) {
		printf("Memory allocation failed. Unable to push element.\n");
		return;
	}
	new_node->link = top;
	new_node->info = val; 
	top = new_node;
}

/* Remove an item off the stack */
int pop()
{
	if (top == NULL) { /* underflow */
		printf("Stack is empty. Cannot remove element.\n");
		return -1;
	}
	struct node* temp = top;
	int popped_val = top->info;
	top = top->link;
	free(temp);
	return popped_val;
}

/* Take a look at what's on the top of stack */
int peek()
{
	if (top == NULL) { /* underflow */
		printf("Stack is empty. Cannot peek.\n");
		return -1;
	}
	return top->info;
}

int main(void)
{
	push(10);
	push(20);
	push(30);

	int p = peek();
	printf("%d\n", p);

	pop();
	pop();
	p = peek();
	printf("%d\n", p);
	return 0;
}
