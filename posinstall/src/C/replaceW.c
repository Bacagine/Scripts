// C program to search and replace 
// all occurrences of a word with 
// other word. 

#include <stdio.h> 
#include <stdlib.h>
#include <locale.h>
#include <string.h>

char *replaceWord(const char *s, const char *oldW, const char *newW);

int main(void){
    
    setlocale(LC_ALL, "Portuguese"); // Permite acentos e caracteres \
                                        especiais da lingua portuguesa
    char str[] = "xxforxx"; 
    char c[] = "xx"; 
    char d[] = "Geeks"; 
  
    char *result = NULL; 
  
    
    
    system("clear"); // Limpa o terminal
    
    // oldW string 
    printf("Old string: %sn", str); 
  
    result = replaceWord(str, c, d); 
    printf("New String: %sn", result); 
  
    free(result);
    
    getchar(); // Pausa a tela (equivalente ao system("pause") do Windows)
    
    return 0;
}

char *replaceWord(const char *s, const char *oldW, const char *newW){ 
    char *result; 
    int i, cnt = 0; 
    int newWlen = strlen(newW); 
    int oldWlen = strlen(oldW); 
  
    // Counting the number of times old word 
    // occur in the string 
    for (i = 0; s[i] != '\0'; i++){ 
        if (strstr(&s[i], oldW) == &s[i]){ 
            cnt++; 
  
            // Jumping to index after the old word. 
            i += oldWlen - 1; 
        } 
    } 
  
    // Making new string of enough length 
    result = (char *)malloc(i + cnt * (newWlen - oldWlen) + 1); 
  
    i = 0; 
    while (*s){ 
        // compare the substring with the result 
        if (strstr(s, oldW) == s){ 
            strcpy(&result[i], newW); 
            i += newWlen; 
            s += oldWlen; 
        } 
        else
            result[i++] = *s++; 
    } 
  
    result[i] = '\0'; 
    return result; 
}
