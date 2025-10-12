#include <stdio.h>
#include <string.h>

// q10.c - Create a file for storing details of N students (Roll and Name) and copy to another file
int main(void) {
    int n;
    printf("How many students? ");
    if (scanf("%d", &n) != 1 || n <= 0) return 1;
    char roll[64];
    char name[128];

    FILE *f1 = fopen("students.txt", "w");
    if (!f1) { perror("fopen"); return 1; }

    for (int i=0;i<n;i++) {
        printf("Enter Roll No: ");
        scanf("%63s", roll);
        printf("Enter Name: ");
        getchar();
        if (!fgets(name, sizeof(name), stdin)) return 1;
        if (name[strlen(name)-1] == '\n') name[strlen(name)-1] = '\0';
        fprintf(f1, "%s %s\n", roll, name);
    }
    fclose(f1);

    // Copy file to another file
    FILE *src = fopen("students.txt", "r");
    FILE *dst = fopen("students_copy.txt", "w");
    if (!src || !dst) { perror("fopen"); return 1; }
    int ch;
    while ((ch = fgetc(src)) != EOF) fputc(ch, dst);
    fclose(src); fclose(dst);

    printf("Data written to students.txt and copied to students_copy.txt\n");
    return 0;
}
