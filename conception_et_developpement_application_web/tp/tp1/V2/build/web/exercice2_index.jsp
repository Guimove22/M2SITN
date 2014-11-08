<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Premier Formulaire</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Premier Formulaire</h1>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <h3>Entrez vos identifiants</h3>
                    <jsp:include page="exercice2_login.jsp"></jsp:include>
                </div>
            </div>
        </div>
        
    </body>
</html>
