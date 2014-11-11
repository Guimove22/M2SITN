<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Création d'un client</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
        <div>
            <form method="get" action="creationClient">
                <fieldset>
                    <legend>Informations client</legend>
    
                    <label for="nomContact">Nom <span class="requis">*</span></label>
                    <input type="text" id="nomContact" name="nomContact" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="prenomContact">Prénom </label>
                    <input type="text" id="prenomContact" name="prenomContact" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="genreContact">Prénom </label>
                    <input type="text" id="genreContact" name="genreContact" value="" size="20" maxlength="20" />
                    <br />
    
                    <label for="adresseContact">Adresse de livraison <span class="requis">*</span></label>
                    <input type="text" id="adresseContact" name="adresseContact" value="" size="20" maxlength="20" />
                    <br />
    
                    <label for="telephoneContact">Numéro de téléphone <span class="requis">*</span></label>
                    <input type="text" id="telephoneContact" name="telephoneContact" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="emailContact">Adresse email</label>
                    <input type="email" id="emailContact" name="emailContact" value="" size="20" maxlength="60" />
                    <br />
                    <label for="checkboxContact">Adresse email</label>
                    <input type="checkbox" id="checkboxContact" name="checkboxContact" value="" size="20" maxlength="60" />
                    <br />
                </fieldset>
                <input type="submit" value="Valider"  />
                <input type="reset" value="Remettre à zéro" /> <br />
            </form>
        </div>
    </body>
</html>