<%-- 
    Document   : affichage.jsp
    Created on : 18 oct. 2014, 10:24:49
    Author     : Zomb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@page import="java.util.Date.*"%>
<%@page import="java.util.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form results</title>
    </head>
    <body>
        
        <%@page errorPage="exercice2_erreurSession.jsp" %>
        <%if(request.getParameter("nom").isEmpty()||request.getParameter("mdp").isEmpty())
            throw new Error("le nom ou le mot de passe n'est pas correct");
        %>
        
        <h1>Form results</h1>
        Nom : <%=request.getParameter("nom")%>
        <br>
        Mot de passe : <%=request.getParameter("mdp")%>
        <br>
        <br>
        <b>Session : </b><br>
        <%session.setAttribute("name",request.getParameter("nom"));%>
        <ul><% out.print("Nom : "+session.getAttribute("name"));%></ul>
        <ul><%out.print(" Id: "+session.getAttribute("id"));%></ul>
        <ul><%out.print(" Temps max : "+session.getMaxInactiveInterval()+" min");%></ul>
        <ul><%long seconds = session.getLastAccessedTime();
            Date date = new Date(seconds); 
            out.print(" Dernier accès : "+date);%></ul>
  
        <form method="post" action="exercice2_interm.jsp">
        <br>
        <input type="submit" value="Déconnexion" />
        </form>
            
            
        
        
                    
          
    </body>
</html>
