#include <stdio.h>

// q1.c - Print first N Fibonacci numbers
int main(void) {
    int n;
    printf("Enter how many Fibonacci numbers to print: ");
    if (scanf("%d", &n) != 1 || n <= 0) {
        printf("Invalid input.\n");
        return 1;
    }

    long a = 0, b = 1;
    for (int i = 1; i <= n; ++i) {
        printf("%ld", a);
        if (i < n) printf(" ");
        long next = a + b;
        a = b;
        b = next;
    }
    printf("\n");
    return 0;
}
