/**************************************************************************
 * Menu.java:  *
 *                                                                        *
 * Programa criado por Gustavo Bacagine <gustavo.bacagine@protonmail.com> *
 *                                                                        *
 * Data: dd/mm/aaaa                                                       *
 **************************************************************************/

package Java;

import java.util.Scanner;
import java.util.Locale;

public class Menu{
    public static void main(String args[]){
        Scanner entrada = new Scanner(System.in);
        entrada.useLocale(Locale.US);

        int op;
        
        do{
            System.out.printf("Cadastro de Clientes\n");
            System.out.printf("1 - Inclui\n");
            System.out.printf("2 - Altera\n");
            System.out.printf("3 - Exclui\n");
            System.out.printf("4 - Consulta\n");
            System.out.printf("5 - Fim\n");
            System.out.printf("Opção: ");
            op = entrada.nextInt();
        }while(op != 5);
        
    }
}
