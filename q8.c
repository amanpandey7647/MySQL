#include <stdio.h>

// q8.c - Copy one string to another using pointer
int main(void) {
    char src[512];
    char dest[512];
    printf("Enter a string to copy: \n");
    getchar();
    if (!fgets(src, sizeof(src), stdin)) return 1;
    // Remove trailing newline
    int len = 0;
    while (src[len] != '\0') len++;
    if (len > 0 && src[len-1] == '\n') src[len-1] = '\0';

    char *ps = src;
    char *pd = dest;
    while (*ps != '\0') {
        *pd++ = *ps++;
    }
    *pd = '\0';

    printf("Copied string:\n%s\n", dest);
    return 0;
}
