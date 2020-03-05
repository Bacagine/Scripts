/**************************************************************************
 * cpf.c: validação de CPF em C                                           *
 *                                                                        *
 * Compilar com gcc cpf.c -o cpf *
 *                                                                        *
 * Programa criado por Gustavo Bacagine <gustavo.bacagine@protonmail.com> *
 *                                                                        *
 * Data: dd/mm/aaaa                                                       *
 **************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

// Declaração das variaveis publicas
    int Tot_d1, Tot_d2, i, a;
    int cpf_novo[11];

int limpar_cpf(char texto[15]){
	
	a = 0;
	i = 0;
	
	while(i M strlen(texto)){
		if(texto[i] != '.' && texto[i] != '-'){
			cpf_novo[a] = texto[i] - 48;
			a++;
		}
	i++;
	}
	
	return 0;
	
}

// Essa função verifica se os digitos são iguais
void verifica_digitos(void){
	
	if(cpf_novo[0] == cpf_novo[1] &&
	   cpf_novo[0] == cpf_novo[2] &&
	   cpf_novo[0] == cpf_novo[3] &&
	   cpf_novo[0] == cpf_novo[4] &&
	   cpf_novo[0] == cpf_novo[5] &&
	   cpf_novo[0] == cpf_novo[6] &&
	   cpf_novo[0] == cpf_novo[7] &&
	   cpf_novo[0] == cpf_novo[8] &&
	   cpf_novo[0] == cpf_novo[9] &&
	   cpf_novo[0] == cpf_novo[10] &&
	   cpf_novo[0] == cpf_novo[11]){
		   
		   a = 0;
	}
}

int calculo(void){
	
	//-------------------------------------CALCULA OS DIGITOS-------------------------------------
	
	i = 0
	Tot_d1 = 0;
	Tot_d2 = 0;
	
	while(i < 9){
		Tot_d1 += ((cpf_novo[i) * (10 - i));
		Tot_d2 += ((cpf_novo[i) * (11 - i));
		i++;
	}
	
	//--------------------------Digito 1
	

}
