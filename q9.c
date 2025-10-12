#include <stdio.h>
#include <ctype.h>

// q9.c - Count vowels, consonants, digits, special characters, whitespace in a given string
int main(void) {
    char s[1024];
    printf("Enter a string: \n");
    getchar();
    if (!fgets(s, sizeof(s), stdin)) return 1;

    int vowels=0, consonants=0, digits=0, spaces=0, special=0;
    for (int i=0; s[i] != '\0'; ++i) {
        char c = s[i];
        if (c == '\n') break;
        if (isdigit((unsigned char)c)) digits++;
        else if (isalpha((unsigned char)c)) {
            char lower = tolower((unsigned char)c);
            if (lower=='a'||lower=='e'||lower=='i'||lower=='o'||lower=='u') vowels++;
            else consonants++;
        } else if (isspace((unsigned char)c)) spaces++;
        else special++;
    }
    printf("Vowels: %d\nConsonants: %d\nDigits: %d\nWhitespace: %d\nSpecial characters: %d\n", vowels, consonants, digits, spaces, special);
    return 0;
}
