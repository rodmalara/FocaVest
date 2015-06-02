<%-- 
    Document   : ViewScore
    Created on : 29/05/2015, 22:19:31
    Author     : Matheus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">

    <title>Eu vou!</title>

    <link href="../Customer/css/bootstrap.min.css" rel="stylesheet">
    <link href="../Customer/css/pifpaf.css" rel="stylesheet">
    <link href="../Customer/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

<!-- top navbar -->
     <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Eu vou!</a>
            </div>


            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <c:if test="${sessionScope.user_data == null}">
                        <a href="SignIn.jsp">Entrar</a>
                        </c:if>
                        <c:if test="${sessionScope.user_data != null}">
                            <p>${sessionScope.user_data.nome}</p>
                        </c:if>
                    </li>
                    <li>
                        <a href="#0">Bares Limeira</a>
                    </li>
                    <li>
                        <a href="#0">Trabalhe Conosco</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
                        
    <div class="container">
        <c:forEach items="${listPontos}" var="pontos">
        <div class="row">
            <div class="bar-group col-md-12">
                <div class="bar-img col-md-4">
                    <img src="http://media-cdn.tripadvisor.com/media/photo-s/02/3a/a4/91/bar.jpg" height="100" width="100">
                </div>
                <div class="bar-description col-md-4">
                    <p style="color:white;">Bar: ${pontos.estabelecimentoTO.nome}</p>
                    <p style="color:white;">Descrição: ${pontos.estabelecimentoTO.descricao}</p>
                    <p style="color:white;">Total de Pontos: ${pontos.totalPontos}</p>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</html>
