<%-- 
    Document   : exercice3_affichage
    Created on : 31 oct. 2014, 17:22:22
    Author     : Zomb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entreprise contact</title>
    </head>
    
    <body>
        <div>ENTREPRISE CONTACT</div>
        <br>
     
    <%@page errorPage="exercice3_erreurSession.jsp" %>
        <%if(request.getParameter("gender").isEmpty())
            throw new Error("Merci de renseigner au moins le 'gender'");
        %>
        
        <form method="POST" action="exercice3_affichage.jsp">
            <label>Name of the entreprise </label>
            <input type="TEXT" name="name"   value=<% out.print(request.getParameter("name").isEmpty()?"":request.getParameter("name"));%>> <br>
                     <!-- on fait à chaque fois un test pour vérifier que request.getParameter existe avant de chercher à l'utiliser. Cela permet d'éviter de mettre tous les champs required.-->
             <label>Phone </label>
             <input type="TEL" name="tel"   value=<% out.print(request.getParameter("tel").isEmpty()?"":request.getParameter("tel"));%>> <br>
             <label>email </label>
            <input type="email" name="mail"   value=<% out.print(request.getParameter("mail").isEmpty()?"":request.getParameter("mail"));%>><br>
             <label>URL </label>
            <input type="URL" name="url"   value=<% out.print(request.getParameter("url").isEmpty()?"":request.getParameter("url"));%>> <br>
            
            
             <br>
             <label>Contact last name </label>
            <input type="TEXT" name="last"   value=<% out.print(request.getParameter("last").isEmpty()?"":request.getParameter("last"));%>>
             <br>
             <label>Contact first name </label>
            <input type="TEXT" name="first"   value=<% out.print(request.getParameter("first").isEmpty()?"":request.getParameter("first"));%>>
             <br>             
             
             <label>Gender : </label>
             <input type="radio" name="gender" value="male" <%if(!(request.getParameter("gender").isEmpty())){out.print(request.getParameter("gender").equals("male")?"checked":"");}%>> Male
            <input type="radio" name="gender" value="female"<%if(!(request.getParameter("gender").isEmpty())){out.print(request.getParameter("gender").equals("female")?"checked":"");}%>> Female
             <br>
             
             <label>Address </label>
            <input type="TEXT" name="address"  value=<% out.print(request.getParameter("address").isEmpty()?"":request.getParameter("address"));%>> <br> 
             
            <input type="submit" value="Submit" />
        
        
        </form>
       
        
        
        
    </body>
</html>
