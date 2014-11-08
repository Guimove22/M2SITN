package Fonctions;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Guimove
 */
import Exceptions.*;

public  class JavaFactorielle {
    
public static String CalculerLaFactorielle (int n) throws ExceptionNegatif
{   
                        // Si le nombre est négatif, on déclenche une exception
                        if (n<= 0)
                        {
                            throw new ExceptionNegatif("Veuillez renseigner un nombre négatif");
                        }
                        String Affichage ="";
                        int fact = 1;
                        for (int i=1; i<=n; i++) 
                        {
                            fact = fact * i;
                            // La variable affichage contient toutes les étapes de la factorielle
                            // elle est concaténée avec la nouvelle étape à chaque passage dans la boucle
                            Affichage +="<br />" + fact;
                        }
                        return Affichage;
}

}