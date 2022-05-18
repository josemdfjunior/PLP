#include <iostream>

int main(){
    int inicio, fim;
    std::cin >> inicio;
    std::cin >> fim;

    int i = inicio + 1;
    for (i; i < fim; i++){
        std::cout << i << " ";
    }   
}
