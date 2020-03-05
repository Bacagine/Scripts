"""
main.py: 

Programa criado por Gustavo Bacagine <gustavo.bacagine@protonmail.com>

Data: dd/mm/aaaa
"""

# -*- coding: utf-8 -*-

import os

def developers():
    os.system("clear")
    print("************************DESENVOLVEDORE(S)************************")    
    print("*                                                               *")
    print("* Instituição  -          Cidade                 -         aaaa *")
    print("*---------------------------------------------------------------*")
    print("*                                                               *")
    print("* Gustavo Bacagine          <gustavo.bacagine@protonmail.com>   *")
    print("* Nome                      <meu_email@algumacoisa.com>         *")
    print("*                                                               *")
    print("* Aqui deverá vir uma breve explicação sobre a aplicação        *")
    print("*                                                               *")
    print("*****************************************************************")
    input()
    
op = 1
while op:
    os.system("clear")
    print("*************MENU*************")
    print("* 1) Opção 1                 *")
    print("* 2) Opção 2                 *")
    print("* 3) Desenvolvedores         *")
    print("* 0) Sair                    *")
    print("******************************")
    op = int(input("Opção: "))
    
    if op == 1:
        op1()
    if op == 2:
        op2()
    if op == 3:
        developers
