

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@page import="java.util.Date.*"%>
<%@page import="java.util.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form results</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
        
        <%@page errorPage="exercice2_erreurSession.jsp" %>
        <%if(request.getParameter("nom").isEmpty()||request.getParameter("mdp").isEmpty())
            throw new Error("le nom ou le mot de passe n'est pas correct");
        %>
        <div class="container">
           
            <div class="row">
                <div class="col-lg-6" style="margin-top:50px">
                   <div class="panel panel-primary">
                      <div class="panel-heading">
                        <h3 class="panel-title">Profil</h3>
                      </div>
                      <div class="panel-body">
                            <address>
                                <strong>Nom </strong> <%=request.getParameter("nom")%><br>
                                <strong>Mot de passe </strong> <%=request.getParameter("mdp")%>
                            </address>

                            
                                <strong><h4>Session</h4></strong>
                                <ul class="list-unstyled">
                                
                                <%session.setAttribute("name",request.getParameter("nom"));%>
                                <li><strong><% out.print("Nom : </strong> "+session.getAttribute("name"));%></li>
                                <li><strong><%out.print(" Id: </strong> "+session.getAttribute("id"));%></li>
                                <li><strong><%out.print(" Temps max : </strong> "+session.getMaxInactiveInterval()+" min");%></li>
                                <li><strong><%long seconds = session.getLastAccessedTime();
                                    Date date = new Date(seconds); 
                                    out.print(" Dernier accès : </strong> "+date);%></li>
                                </ul>
                            
                            <form method="post" action="exercice2_interm.jsp">
                                <button type="submit" value="deconnexion"class="btn btn-default">Déconnexion</button>
                            </form>
                      </div>
                    </div>
                </div>
            </div>
        </div>   

     
        
            
            
        
        
                    
          
    </body>
</html>
