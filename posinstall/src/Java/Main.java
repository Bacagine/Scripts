/**************************************************************************
 * fonte.java: *
 *                                                                        *
 * Programa criado por Gustavo Bacagine <gustavo.bacagine@protonmail.com> *
 *                                                                        *
 * Data: dd/mm/aaaa                                                       *
 **************************************************************************/

package Package_Name;

import java.util.Scanner;
import java.util.Locale;

public class fonte{
    public static void main(String args[]){
        Scanner in = new Scanner(System.in);
        in.useLocale(Locale.US);
        
        Clear.clear();
        
        
        
        new Scanner(System.in).NextLine();
    }
    
    public satatic void Clear(){
        System.out.printf("[\033[H\033[2J");
    }
}
