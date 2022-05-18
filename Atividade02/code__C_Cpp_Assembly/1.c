#include <stdio.h>
#include <stdlib.h>

int main(){
    int inicio, fim;
    scanf("%d %d", &inicio, &fim);

    for (int i = inicio + 1; i < fim; i++){
        printf("%d ", i);
    }

    return 0;
}

