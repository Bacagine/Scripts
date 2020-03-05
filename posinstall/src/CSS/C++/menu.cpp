/***********************************************************************
 * Git Hub: https://github.com/Bacagine/Modelos                        *
 *                                                                     *
 * menu.cpp: Modelo de um menu escrito em C++                          *
 *                                                                     *
 * Versão: (aqui deve vir a versão da sua aplicação. Ex.: 1.0)         *
 *                                                                     *
 * Desenvolvedores: Gustavo Bacagine <gustavo.bacagine@protonmail.com> *
 *                  Nome             <meu_email@algumacoisa.com>       *
 *                                                                     *
 * Data: dd/mm/aaaa                                                    *
 ***********************************************************************/

#include <iostream>
#include "clear_buffer.h"

using namespace std;

void op1(void);
void op2(void);

int main(void){
      
    int op;
    
    system("clear");
    
    do{
        cout << "**********MENU**********" << '\n';
        cout << "* 1) Option 1          *" << endl;
        cout << "* 2) Option 2          *" << endl;
        cout << "* 3) Sair              *" << endl;
        cout << "************************" << '\n';
//         cin.get >> &op;
        scanf("%d", &op);
        
        switch(op){
            case 1:
                op1();
                break;
            case 2:
                op2();
                break;
            case 3:
                break;
            default:
                system("clear");
                cout << "OP Inválida!!";
                clear_buffer();
                getchar();
                system("clear");
                break;
        }
        
    } while(op != 3);
    
    return 0;
}

void op1(void){
    
    system("clear");
    cout << "Op 1\n";
    clear_buffer();
    getchar();
    system("clear");
    
}

void op2(void){
    
    system("clear");
    cout << "OP 2!!!" << '\n';
    clear_buffer();
    getchar();
    system("clear");
    
}
