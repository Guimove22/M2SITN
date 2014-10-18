<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'un Contact</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
        <%-- Affichage de la chaîne "message" transmise par la servlet --%>
        <p class="info">${ message }</p>
        <%-- Puis affichage des données enregistrées dans le bean "client" transmis par la servlet --%>
        <p>Nom : ${ contact.nom }</p>
        <p>Prénom : ${ contact.prenom }</p>
        <p>Genre : ${ contact.genre }</p>
        <p>Adresse : ${ contact.adresse }</p>
        <p>Numéro de téléphone : ${ contact.telephone }</p>
        <p>Email : ${ contact.email }</p>
        <p>Checkbox : ${ contact.checkbox }</p>
    </body>
</html>