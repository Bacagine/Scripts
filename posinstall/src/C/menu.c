/***********************************************************************
 * Git Hub: https://github.com/Bacagine/Modelos                        *
 *                                                                     *
 * menu.c: Modelo de um menu escrito em C                              *
 *                                                                     *
 * Versão: (aqui deve vir a versão da sua aplicação. Ex.: 1.0)         *
 *                                                                     *
 * Desenvolvedores: Gustavo Bacagine <gustavo.bacagine@protonmail.com> *
 *                  Nome             <meu_email@algumacoisa.com>       *
 *                                                                     *
 * Data: 20/12/2019                                                    *
 ***********************************************************************/

#include <stdio.h>
#include <stdlib.h>           // Biblioteca usada para o system("clear")
#include <locale.h>          // Biblioteca para poder usar a função setlocale \
                                usada para colocar acentuação nas palavras
#include "clear_buffer.h"  /* --> Biblioteca para poder usar 
                                  a função clear_buffer() */
#include "developers.h"  /* --> Biblioteca para poder usar a função
                                developers() */

#define ERROR "ERRO! Opção inválida!"  /* Mensagem de erro caso 
                                          o usuario digite uma 
                                          opção inválida */

int main(void){
    
    setlocale(LC_ALL, "Portuguese"); // Permite o uso de acentuações e caracteres especiais
    
    int op; // Opção a ser escolhida pelo usuário
    
    system("clear"); // Limpa o terminal
    do{
        printf("*************MENU*************\n");
        printf("* 1) Opção 1                 *\n");
        printf("* 2) Opção 2                 *\n");
        printf("* 3) Desenvolvedores         *\n");
        printf("* 4) Sair                    *\n");
        printf("******************************\n");
        scanf("%d", &op);
        
        switch(op){
            
            case 1:
                //function_1();                  //
                break;
            case 2:
                //function_2();               //
                break;
            case 3:
                developers();              // Mostra os desenvolvedores da aplicação
                break;
            case 4:
                system("clear");        // Limpa o terminal antes de sair da aplicação
                break;
            default:
                system("clear");     // Limpa o termianl
                puts(ERROR);        // Exibe uma mensagem de erro
                getchar();         // Pausa a mensagem de erro no terminal
                clear_buffer();   // Limpa o buffer caso o usuário digite algo
                system("clear"); // Limpa o termianl antes de voltar para o menu
            
        }
    } while(op != 4); // Enquanto o usuário não digitar o número x \
                         será exibido o menu
    
    return 0;
}
