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

#include <iostream>
#include <cstdlib>         // Biblioteca para poder usar a função system("clear")
#include "clear_buffer.h" /* --> Biblioteca para poder usar 
                                 a função clear_buffer() */
#include "developers.h" /* --> Biblioteca para poder usar a função
                               developers() */

void developers(void){
    
    system("clear"); // Limpa o terminal ao entrar aqui
    
    cout << "************************DESENVOLVEDORE(S)************************\n");    
    cout << "*                                                               *\n");
    cout << "* Instituição  -          Cidade                 -         aaaa *\n");
    cout << "*---------------------------------------------------------------*\n");
    cout << "*                                                               *\n");
    cout << "* Gustavo Bacagine          <gustavo.bacagine@protonmail.com>   *\n");
    cout << "* Nome                      <meu_email@algumacoisa.com>         *\n");
    cout << "*                                                               *\n");
    cout << "* Aqui deverá vir uma breve explicação sobre a aplicação        *\n");
    cout << "*                                                               *\n");
    cout << "*****************************************************************\n");
    
    cin.get();         /* Pausa essa mensagem no terminal */
    clear_buffer();   // Limpa o buffer
    system("clear"); // Limpa o terminal antes de voltar para o menu

}
