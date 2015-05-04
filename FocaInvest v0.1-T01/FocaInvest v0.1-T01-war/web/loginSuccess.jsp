<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome Page</title>
        <%String uname = (String) request.getParameter("uname");
                    if (uname == null) {
                        response.sendRedirect("index2.jsp");
                    }
        %>
        user name :<%=uname%>|
    <a href="logout.jsp"> Logout </a>

    </head>
    <body>

        <h1>Hello World success !</h1>
    </body>
</html>

