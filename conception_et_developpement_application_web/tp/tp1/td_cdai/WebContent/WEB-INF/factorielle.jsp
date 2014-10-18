<!DOCTYPE html>
<%@page import="com.td_cdai.servlets.Factorielle"%>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Factorielle</title>
        <style>


table
{
    border-collapse: collapse;
}
td, th /* Mettre une bordure sur les td ET les th */
{
    padding:10px;border: 1px solid black;
}</style>


    </head>
    <body>
        
            <% 
            
            String attribut = (String) request.getAttribute("fact");
            out.print("<table>");
	            out.print("<thead>");
		            out.print("<tr>");
			            out.print("<td >I</td>");
			            out.print("<td >Factorielle(I)</td>");
		            out.print("</tr>");
	            out.print("</thead>");
            out.print("<tbody >");
            int len = Integer.parseInt(attribut);
             for(int i=0;i<len+1;i++){
            	Factorielle f = new Factorielle();
                    
            	
                        out.print("<tr style=\"border: 1px solid black;\">");
                        out.print("<td >"+i+"</td>");
                        out.print("<td >"+f.Factorielle(i) + "</td>");
                        out.print("</tr>");
                   
               }
             out.print("</tbody>");
             out.print("</table>");

            
            %>
        
   </body>
</html>

