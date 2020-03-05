/***********************************************************************
 * Git Hub: https://github.com/Bacagine/Modelos                        *
 *                                                                     *
 * developers.c: Mostra os desenvolvedores da aplicação                *
 *                                                                     *
 * Desenvolvedores: Gustavo Bacagine <gustavo.bacagine@protonmail.com> *
 *                  Nome             <meu_email@algumacoisa.com>       *
 *                                                                     *
 * Data: dd/mm/aaaa                                                    *
 ***********************************************************************/

#include <stdio.h>
#include <stdlib.h>         // Biblioteca para poder usar a função system("clear")
#include <locale.h>        // Biblioteca para poder usar a função setlocale
#include "clear_buffer.h" /* --> Biblioteca para poder usar 
                                 a função clear_buffer() */
#include "developers.h" /* --> Biblioteca para poder usar a função
                               developers() */

void developers(void){
    
    setlocale(LC_ALL, "Portuguese");

    system("clear"); // Limpa o terminal ao entrar aqui
    
    fprintf(stdout, "************************DESENVOLVEDORE(S)************************\n");    
    fprintf(stdout, "*                                                               *\n");
    fprintf(stdout, "* Instituição  -          Cidade                 -         aaaa *\n");
    fprintf(stdout, "*---------------------------------------------------------------*\n");
    fprintf(stdout, "*                                                               *\n");
    fprintf(stdout, "* Gustavo Bacagine          <gustavo.bacagine@protonmail.com>   *\n");
    fprintf(stdout, "* Nome                      <meu_email@algumacoisa.com>         *\n");
    fprintf(stdout, "*                                                               *\n");
    fprintf(stdout, "* Aqui deverá vir uma breve explicação sobre a aplicação        *\n");
    fprintf(stdout, "*                                                               *\n");
    fprintf(stdout, "*****************************************************************\n");
    
    getchar();         /* Pausa essa mensagem no terminal */
    clear_buffer();   // Limpa o buffer
    system("clear"); // Limpa o terminal antes de voltar para o menu

}
