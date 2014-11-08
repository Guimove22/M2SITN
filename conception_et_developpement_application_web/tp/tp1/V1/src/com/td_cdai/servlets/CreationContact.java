package com.td_cdai.servlets;

import javax.servlet.http.HttpServlet;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.td_cdai.beans.Contact;

public class CreationContact extends HttpServlet {

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /*
         * Récupération des données saisies, envoyées en tant que paramètres de
         * la requête GET générée à la validation du formulaire
         */
        String nom = request.getParameter( "nomContact" );
        String prenom = request.getParameter( "prenomContact" );
        String adresse = request.getParameter( "adresseContact" );
        String genre = request.getParameter( "genreContact" );
        String telephone = request.getParameter( "telephoneContact" );
        String email = request.getParameter( "emailContact" );
        boolean checkbox = Boolean.valueOf(request.getParameter( "checkboxContact" ));

        String message;
        /*
         * Initialisation du message à afficher : si un des champs obligatoires
         * du formulaire n'est pas renseigné, alors on affiche un message
         * d'erreur, sinon on affiche un message de succès
         */
        if ( nom.trim().isEmpty() || adresse.trim().isEmpty() || telephone.trim().isEmpty() ) {
            message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\"CreationContact.jsp\">Cliquez ici</a> pour accéder au formulaire de création d'un contact.";
        } else {
            message = "Contact créé avec succès !";
        }
        /*
         * Création du bean Client et initialisation avec les données récupérées
         */
        Contact client = new Contact();
        client.setNom( nom );
        client.setPrenom( prenom );
        client.setAdresse( adresse );
        client.setGenre( genre );
        client.setTelephone( telephone );
        client.setEmail( email );
        client.setCheckbox( checkbox );

        /* Ajout du bean et du message à l'objet requête */
        request.setAttribute( "contact", client );
        request.setAttribute( "message", message );

        /* Transmission à la page JSP en charge de l'affichage des données */
        this.getServletContext().getRequestDispatcher( "/afficherContact.jsp" ).forward( request, response );
    }
}