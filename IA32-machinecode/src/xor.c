/*
 * what happens an xor with the same int,
 * why it nulls out of course 
 *
 * xor  %edx, %edx
 * */


int xor (int x) {
    return x ^ x;
}

int main() {
    int x = 4;
    return xor(4);
}
