/**************************************************************************
 * Clear.java: Limpa o terminal no linux                                  *
 *                                                                        *
 * Programa criado por Gustavo Bacagine <gustavo.bacagine@protonmail.com> *
 *                                                                        *
 * Data: 22/02/2020                                                       *
 **************************************************************************/

package Name_Package;

public class Clear{
    public static void clear(){
        System.out.printf("\033[H\033[2J");
    }
}
