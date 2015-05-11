<%-- 
    Document   : logout
    Created on : May 4, 2015, 6:48:19 PM
    Author     : rodrigo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <%
                    session.invalidate();
                    response.sendRedirect("login.jsp");
        %>
    </body>
</html>
