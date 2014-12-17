
/**
 * Write a description of class Acteur here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */

import java.util.List;
import java.util.ArrayList;


public class Acteur
{
    private String prenomActeur;
    private String nomActeur;
    private List<Film> listeFilms;

    /**
     * Constructor for objects of class Acteur
     */
    public Acteur()
    {
      this.prenomActeur = "Anne";
      this.nomActeur = "Dorval";
      this.listeFilms = new ArrayList<Film>();
    }

  
     // Getter
    public String getNomActeur()
    {
        return this.nomActeur;
    }
    
    
    public String getPrenomActeur()
    {
        return this.prenomActeur;
    }
    
    
    public List getListeFilms()
    {
        return this.listeFilms;
    }
    
    // Méthode pour ajouter un film à la liste de films
    public void ajouterFilm(Film unFilm)
    {
     
       this.listeFilms.add(unFilm);
       
       // On s'assure de la symétrie des objets
       unFilm.getListeActeurs().add(this);
       System.out.println("Le film a été ajouté");
       System.out.println("Liste des films :");
       
       // On affiche tous les films de l'acteur 
       for  (Film leFilm : this.listeFilms)
       {
           leFilm.infoFilms();
       }
    }
}
