/***********************************************************************
 * Git Hub: https://github.com/Bacagine/Modelos                        *
 *                                                                     * 
 * fonte.c: Modelo de um arquivo fonte.c                               *
 *                                                                     *
 * Compilar com gcc fonte.c -o fonte                                   *
 *                                                                     *
 * Desenvolvedores: Gustavo Bacagine <gustavo.bacagine@protonmail.com> *
 *                  Nome             <meu_email@algumacoisa.com>       *
 *                                                                     *
 * Data: dd/mm/aaaa                                                    *
 ***********************************************************************/

#include <stdio.h>
#include <stdlib.h>  // Biblioteca usada para o system("clear")
#include <locale.h> // Biblioteca para poder usar a função setlocale \
                       usada para colocar acentuação nas palavras

int main(void/*int argc, char **argv*/){
    
    setlocale(LC_ALL, "Portuguese"); // Permite acentos e caracteres \
                                        especiais da lingua portuguesa
    
    
    
    system("clear"); // Limpa o terminal
    
    printf("\n");
    
    getchar(); // Pausa a tela (equivalente ao system("pause") do Windows)
    
    return 0;
}
