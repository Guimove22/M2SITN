<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>From</title>
    </head>
    <%!int i=1;%>
        
        <form role="form" method="post" action="exercice2_affichage.jsp">
            <div class="form-group">
                <label for="nom">Nom :</label>
                <input type="text" name="nom" class="form-control" id="nom" placeholder="Saisissez votre nom" required>
            </div>
            <div class="form-group">
                <label for="password">Mot de passe</label>
                <input type="password" name="mdp" class="form-control" id="password" placeholder="Saisissez votre mot de passe" required>
            </div>
            <button type="submit" class="btn btn-default">Connexion</button>
            <button type="reset" class="btn btn-default">Annuler</button>
        </form>
        
        
    
    <% 
        session.setAttribute("id",i++);
        session.setMaxInactiveInterval(15);
    %>

    
