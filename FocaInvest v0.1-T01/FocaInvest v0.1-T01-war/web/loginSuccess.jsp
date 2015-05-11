<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        <br/>
        <%String uname = (String) request.getParameter("uname");
                    if (uname == null) {
                        response.sendRedirect("login.jsp");
                    }
        %>
        Você está logado como: <%=uname%> |
    <a href="logout.jsp"> Logout </a>

    </head>
    <body>

        <h1>Bem vindo <%=uname%></h1>
    </body>
</html>

