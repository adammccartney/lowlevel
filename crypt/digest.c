#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sha1.h>
#include <unistd.h>

void digest(char *buf) {
        SHA1_CTX sha;
        uint8_t results[SHA1_DIGEST_LENGTH];
        int n;

        n = strlen(buf);
        SHA1Init(&sha);
        SHA1Update(&sha, (uint8_t *)buf, n);
        SHA1Final(results, &sha);

        /* Print the digest as one long hex value */
        printf("0x");
        for (n = 0; n < SHA1_DIGEST_LENGTH; n++) {
                printf("%02x", results[n]);
        }
        putchar('\n');
}

int main(int argc, char* argv[argc+1]) {
        char* buf = NULL;

        if (argc != 2) {
                printf("usage: digest <string to hash>");
                return 0;
        }
        if (argc == 2) {
                buf = malloc( strlen( argv[1] ) + 1 );
                strcpy(buf, argv[1]);
                digest(buf);
        }
        return 0;
}
