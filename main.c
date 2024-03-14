#include <stdio.h>

int main(int argc, char *argv[]) {
    if (argc == 3) {
        int a, b = 0;
        if (sscanf(argv[1], "%d", &a) == 1 && sscanf(argv[2], "%d", &b) == 1) {
            printf("%d + %d = %d\n", a, b, a+b);
        }
        else
            printf("type error\n");
    }
    else
        printf("error\n");
    return 0;
}
