#include <stdio.h>

// q2.c - Reverse integer and check palindrome
int main(void) {
    long num;
    printf("Enter an integer: ");
    if (scanf("%ld", &num) != 1) return 1;

    long original = num;
    int negative = 0;
    if (num < 0) { negative = 1; num = -num; }

    long rev = 0;
    while (num > 0) {
        rev = rev * 10 + (num % 10);
        num /= 10;
    }
    if (negative) rev = -rev;

    printf("Reversed number: %ld\n", rev);
    if (rev == original) printf("The number is a palindrome.\n");
    else printf("The number is not a palindrome.\n");
    return 0;
}
