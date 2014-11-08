package com.td_cdai.servlets;

import javax.servlet.http.HttpServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.td_cdai.beans.Contact;
import com.td_cdai.beans.Entreprise;

public class CreationEntreprise extends HttpServlet {

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /*
         * Récupération des données saisies, envoyées en tant que paramètres de
         * la requête GET générée à la validation du formulaire
         */
        String nom = request.getParameter( "nomEntreprise" );
        String url = request.getParameter( "urlEntreprise" );
        String telephone = request.getParameter( "telephoneEntreprise" );
        String email = request.getParameter( "emailEntreprise" );

        
        

        String message;
        /*
         * Initialisation du message à afficher : si un des champs obligatoires
         * du formulaire n'est pas renseigné, alors on affiche un message
         * d'erreur, sinon on affiche un message de succès
         */
        if ( nom.trim().isEmpty()  || telephone.trim().isEmpty()  
                || email.isEmpty() || url.isEmpty() ) {
            message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\"creerCommande.jsp\">Cliquez ici</a> pour accéder au formulaire de création d'une commande.";
        } else {
            message = "Commande créée avec succès !";
        }
        /*
         * Création des beans Contact et Entreprise et initialisation avec les
         * données récupérées
         */
      

        Entreprise entreprise = new Entreprise();
        entreprise.setNom( nom );
        entreprise.setTelephone( telephone );
        entreprise.setEmail( email );
        entreprise.setUrl( url );
        

        /* Ajout du bean et du message à l'objet requête */
        request.setAttribute( "entreprise", entreprise );
        request.setAttribute( "message", message );

        /* Transmission à la page JSP en charge de l'affichage des données */
        this.getServletContext().getRequestDispatcher( "/afficherEntreprise.jsp" ).forward( request, response );
    }
}
