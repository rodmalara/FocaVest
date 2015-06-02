<%-- 
    Document   : Establishment
    Created on : 29/05/2015, 10:53:21
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
    <c:set var="bar" value="${requestScope.bar}"></c:set>
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
                <a class="navbar-brand" href="index.html"></a>
            </div>


            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#0">Bares Limeira</a>
                    </li>
                    <li>    
                        <c:if test="${sessionScope.user_data == null}" >
                            <a class="" href="SignIn.jsp">Entrar</a>
                        </c:if>
                        <c:if test="${sessionScope.user_data != null}">
                            ${sessionScope.user_data.nome}
                        </c:if>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('http://wallpaperscraft.com/image/44732/1920x1080.jpg');"></div>
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://wallpaperscraft.com/image/44732/1920x1080.jpg');"></div>
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://wallpaperscraft.com/image/44732/1920x1080.jpg');"></div>
                <div class="carousel-caption">
                </div>
            </div>
        </div>
    </header>
    
<div class="container">
    <div class="row">
        <div class="header-establishment col-md-6">
            ${bar.nome} 
        </div>
        <div class="description-establishment col-md-6">
            <div class="col-md-6">
                <p style="color: white;">Descrição: ${bar.descricao}</p>
            </div>
            <div class="col-md-6">
                <p style="color: white;">Telefone: ${bar.telefone}</p>
                <p style="color: white;">Email: ${bar.email}</p>
            </div>
        </div>
    </div>
    
    <div class="row">
        <form method="post" action="GetGiftServlet" >    
        <div class="gift-establishment">
            <img src="http://img.americanas.com.br/produtos/01/00/item/5829/3/5829305_1GG.jpg" height="80" width="80">
            <p style="color:white">${bar.premiacaoTO.nome}</p>
            <p style="color:white">Pontos necessários: ${bar.premiacaoTO.pontoBrinde}</p>
            <input type="submit" name="" value="Trocar brinde">
        </div>    
        </form>    
    </div>   
    <br>        
    <p style="color: white;">Eventos</p>
    <c:forEach items="${requestScope.listEvento}" var="event">
        <div class="row event-group">
            <div class="img-establishment col-md-3">
            <img src="http://media-cdn.tripadvisor.com/media/photo-s/02/3a/a4/91/bar.jpg" height="50px" width="50px"/>
        </div>
        <div class="event-establishment col-md-6">
            <p class="event-title">${event.nome}</p>
            <p class="event-description">${event.descricao}</p>
        </div>
        <div class="col-md-3">
            <form method="post" action="GoEventServlet?eventId=${event.eventoID}&barId=${bar.estabelecimentoID}">
                <input type="submit" name="GoEvent" value="Ir para o evento">
            </form>
        </div>
        </div>
        </c:forEach>
</div>
</body>
</html>	