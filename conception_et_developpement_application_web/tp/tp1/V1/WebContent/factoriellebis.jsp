

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factorielle</title>
    </head>
    <body>
        <%@page
            language="Java" import="java.io.*, java.util.*,java.math.*,java.lang.*,com.td_cdai.servlets.Factorielle"
            info="UtilitÃ© de la page doit Ãªtre Ã©crite ici"
            contentType="text/html"
            session="false"
            buffer="32kb"
            autoFlush="true"
            isThreadSafe="true"
            errorPage="/JSPErrors/Error2.jsp"
            %>
            <%!
                long len=19;
            %>
            <table title="Factorielle" style="font-size: 15px;" border="3" width="2" cellspacing="1" cellpadding="1">
                <thead style=" font-size: 40px ">
                    <tr >
                        <th >N</th>
                        <th >N!</th>
                    </tr>
                </thead>
                <tbody>
                       
                </tbody>
            </table>

    </body>
</html>

