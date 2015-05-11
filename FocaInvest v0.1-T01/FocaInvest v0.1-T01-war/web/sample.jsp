<%-- 
    Document   : sample
    Created on : 06/03/2015, 01:53:27
    Author     : Matheus
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% /* Import Statements  %>
<%@page import="org.postgresql.Driver" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sample Page</title>
        <link rel="stylesheet" href="css/bootstrap.css" /> 
        <link rel="stylesheet" href="css/focainvest-core.css" /> 
        <link rel="stylesheet" href="css/bootstrap-theme.css" /> 
    </head>
    <body>
        <h1>Hello World!</h1>
        <div style="margin-top: 10px;">Exemplo Padrão de Importação de CSS/JS</div>
        <button style="margin-top: 10px;" class="btn btn-primary">Button Bootstrap Sample</button>
        <div style="margin-top: 10px;">
            <% 
                /* Imported Jars Testing */
                try{
                Class.forName("org.postgresql.Driver");
                Class.forName("org.hibernate.cfg.Configuration");
                }catch(ClassNotFoundException errorClass){
                    out.println("Erro de classe: " + errorClass);
                }
            %>
        </div>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
