<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="tp1.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factorielle</title>
    </head>
    
    <body>
        <h1>Fonction factorielle</h1>  
          <br>
        <% 
           if(Factorielle.factorielle(Integer.parseInt(request.getParameter("x")))==0){ 
            out.print("Merci de relancer le fichier en entrant un nombre entier positif");
        }
        else{
            out.print("<b>Factorielle de "+(request.getParameter("x")+" : "+Factorielle.factorielle(Integer.parseInt(request.getParameter("x"))))+"</b>");}
        %>
        <br>
        <br>
        <table>   
                <% int n=(Integer.parseInt(request.getParameter("x")));
        for (int j=0;j<=n;j++) {
                        
                        out.print("<tr><td>Factorielle de " + j +" : "+Factorielle.factorielle(j)+"</td></tr>");
                       
        }  
                %>   
        </table>
              
    </body>
</html>
