<%-- 
    Document   : login.jsp
    Created on : 18 oct. 2014, 10:00:07
    Author     : Zomb
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>From</title>
    </head>
    <%!int i=1;%>
        <form method="post" action="exercice2_affichage.jsp">
            <label>Nom : </label>
            <input type="text" name="nom" required/>
            <%--pour faire apparaître la page d'erreur il faut donc enlever les required des champs nom et mdp --%>
            
            <label>Mot de passe : </label>
            <input type="password" name="mdp" required/>
        <br>
        <input type="submit" value="Submit" />
        <input type="reset" value="Reset" />
        </form>
        
        
    
    <% 
        session.setAttribute("id",i++);
        session.setMaxInactiveInterval(15);
    %>

    
