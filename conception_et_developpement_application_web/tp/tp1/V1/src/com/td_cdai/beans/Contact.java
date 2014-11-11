package com.td_cdai.beans;

public class Contact {


   
    private String nom;
    private String prenom;
    private String adresse;
    private String genre;
    private String telephone;
    private String email;
    private boolean checkbox;

    public void setNom( String nom ) {
        this.nom = nom;
    }

    public String getNom() {
        return nom;
    }

    public void setPrenom( String prenom ) {
        this.prenom = prenom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setAdresse( String adresse ) {
        this.adresse = adresse;
    }

    public String getAdresse() {
        return adresse;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone( String telephone ) {
        this.telephone = telephone;
    }

    public void setEmail( String email ) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }
    public void setGenre( String genre ) {
        this.genre = genre;
    }

    public String getGenre() {
        return genre;
    }
    public void setCheckbox( boolean checkbox ) {
        this.checkbox = checkbox;
    }

    public boolean getCheckbox() {
        return checkbox;
    }
}