#include <stdio.h>
#include <math.h>

// q3.c - Check whether a given number is prime
int main(void) {
    long n;
    printf("Enter a positive integer: ");
    if (scanf("%ld", &n) != 1 || n <= 0) {
        printf("Invalid input.\n");
        return 1;
    }
    if (n == 1) {
        printf("1 is neither prime nor composite.\n");
        return 0;
    }
    int isPrime = 1;
    for (long i = 2; i <= (long)sqrt((double)n); ++i) {
        if (n % i == 0) { isPrime = 0; break; }
    }
    if (isPrime) printf("%ld is a prime number.\n", n);
    else printf("%ld is not a prime number.\n", n);
    return 0;
}
