/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Zomb
 */

package tp1 ;
//import java.io.*;

public class Factorielle {
   public static int factorielle(int x) {  
       
       if (!(x>=0 & x<999999999)){
                return 0;
            }
            else{
                if (x==0)
                    return 1;
                else return x*factorielle(x-1);
            }
        }
          
}

