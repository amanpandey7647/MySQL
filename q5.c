#include <stdio.h>

// q5.c - Convert lowercase to uppercase and vice-versa without built-in functions
int main(void) {
    char buf[1024];
    printf("Enter a sentence: \n");
    getchar(); // consume leftover newline from previous input if any
    if (!fgets(buf, sizeof(buf), stdin)) return 1;

    for (int i = 0; buf[i] != '\0'; ++i) {
        char c = buf[i];
        if (c >= 'a' && c <= 'z') buf[i] = c - ('a' - 'A');
        else if (c >= 'A' && c <= 'Z') buf[i] = c + ('a' - 'A');
    }
    printf("Converted sentence:\n%s", buf);
    return 0;
}
