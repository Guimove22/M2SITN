<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title>Entreprise contact</title>
    </head>
    
    <body>
       
     
    <%@page errorPage="exercice3_erreurSession.jsp" %>
        <%
        %>
        <div class="container">
            <div class="row">
                <h1>Formulaire Entreprise</h1>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <form method="POST" action="exercice3_affichage.jsp">
    
                        
                        
                        <div class="form-group">
                            <label for="nom">Nom de l'entreprise</label>
                            <input  type="text" 
                                    name="name" 
                                    class="form-control" 
                                    id="nom" 
                                    value=<% out.print(request.getParameter("name").isEmpty()?"":request.getParameter("name"));%> required>
                        </div>

                        <div class="form-group">
                            <label for="nom">Téléphone</label>
                            <input  type="tel" 
                                    name="tel" 
                                    class="form-control" 
                                    id="tel" 
                                    value=<% out.print(request.getParameter("tel").isEmpty()?"":request.getParameter("tel"));%>> 
                        </div>

                        <div class="form-group">
                            <label for="mail">Email </label>
                            <input  type="text" 
                                    name="name" 
                                    class="form-control" 
                                    id="mail" 
                                    value=<% out.print(request.getParameter("mail").isEmpty()?"":request.getParameter("mail"));%>>
                        </div>

                        <div class="form-group">
                            <label for="nom">Site Web</label>
                            <input  type="url" 
                                    name="name" 
                                    class="form-control" 
                                    id="nom"  
                                    value=<% out.print(request.getParameter("url").isEmpty()?"":request.getParameter("url"));%>>
                        </div>

                        <div class="form-group">
                            <label for="nom">Nom de l'entreprise</label>
                            <input  type="text" 
                                    name="name" 
                                    class="form-control" 
                                    id="nom"  
                                    value=<% out.print(request.getParameter("name").isEmpty()?"":request.getParameter("name"));%> required>
                        </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="name">Nom du Contact</label>
                                <input  type="text" 
                                        name="last" 
                                        class="form-control" 
                                        id="name"  
                                        value=<% out.print(request.getParameter("last").isEmpty()?"":request.getParameter("last"));%> required>
                            </div>

                            <div class="form-group">
                                <label for="first">Prénom du Contact</label>
                                <input  type="text" 
                                        name="first" 
                                        class="form-control" 
                                        id="first"  
                                        value=<% out.print(request.getParameter("first").isEmpty()?"":request.getParameter("first"));%> required>
                            </div>

                             <label>Genre : </label>
                         <input type="radio" name="gender" value="male" <%if(!(request.getParameter("gender").isEmpty())){out.print(request.getParameter("gender").equals("male")?"checked":"");}%>> Male
                        <input type="radio" name="gender" value="female"<%if(!(request.getParameter("gender").isEmpty())){out.print(request.getParameter("gender").equals("female")?"checked":"");}%>> Female
                         <br>
                        
                        <div class="form-group">
                        <label for="address">Adresse</label>
                        
                        <input           class="form-control" 
                                            rows="3" 
                                            name="address" 
                                            class="form-control" 
                                            id="address" 
                                            value=<% out.print(request.getParameter("address").isEmpty()?"":request.getParameter("address"));%> required>
                        
                        </div>
                         
                        <a href="/WebApplication_TD1/" type="reset" class="btn btn-default">Retour</a></button>
                    
                    
                    </form>

                        </div>           

                        
                        
                               
                         
                        
       
        
        
        
    </body>
</html>
