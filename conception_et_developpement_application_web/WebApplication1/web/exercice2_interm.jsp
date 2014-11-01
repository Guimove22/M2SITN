<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title>Déconnexion</title>
    </head>
    <body>

        <div class="container">
            <div class="row">
                 <div class="col-lg-7">
                    <h1>Déconnexion effectuée avec succès !</h1>
                     <% session.invalidate(); %>
                     <a class="btn btn-default" href="exercice2_index.jsp">Retour</a>
                    
                </div>
            </div>
        </div>
        
       
        </body>
</html>
