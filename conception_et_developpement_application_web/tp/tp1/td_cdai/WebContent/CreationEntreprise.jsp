<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Création d'une Entreprise</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
        <div>
            <form method="get" action="creationEntreprise">
                <fieldset>
                    <legend>Informations</legend>
    
                    <label for="nomEntreprise">Nom <span class="requis">*</span></label>
                    <input type="text" id="nomEntreprise" name="nomEntreprise" value="" size="20" maxlength="20" />
                    <br />
                    
                    
    
                   
    
                    <label for="telephoneEntreprise">Numéro de téléphone <span class="requis">*</span></label>
                    <input type="text" id="telephoneEntreprise" name="telephoneEntreprise" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="emailClient">Adresse email</label>
                    <input type="email" id="emailEntreprise" name="emailEntreprise" value="" size="20" maxlength="60" />
                    <br />
                    <label for="urlEntreprise">Adresse email</label>
                    <input type="email" id="urlEntreprise" name="urlEntreprise" value="" size="20" maxlength="60" />
                    <br />
                </fieldset>
                
                <input type="submit" value="Valider"  />
                <input type="reset" value="Remettre à zéro" /> <br />
            </form>
        </div>
    </body>
</html>