<%-- 
    Document   : interm
    Created on : 30 oct. 2014, 18:52:04
    Author     : Zomb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Déconnexion</title>
    </head>
    <body>
        <h1>Déconnexion effectuée avec succès !</h1>
        <% session.invalidate(); %>
        <form method="POST" action="exercice2_index.jsp">
            <input type="submit" value="Retour"/>
        </form>
        </body>
</html>
