<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'une Entreprise</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
        <%-- Affichage de la chaîne "message" transmise par la servlet --%>
        <p class="info">${ message }</p>
        <%-- Puis affichage des données enregistrées dans le bean "commande" transmis par la servlet --%>
        <p>Entreprise</p>
        <p>Nom : ${ entreprise.nom }</p>
        <p>url : ${ entreprise.url }</p>
        <p>Numéro de téléphone : ${ entreprise.telephone }</p>
        <p>Email : ${ entreprise.email }</p>
        
    </body>
</html>