<%-- 
    Document   : Home
    Created on : 19/05/2015, 12:29:31
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


        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

<hr>
    
<div class="container">

    <c:forEach items="${requestScope.barList}" var="bar">
        <div class="col-lg-4 col-sm-4 col-md-4 surprise">
            <div class="form_hover">
                <img id="bar" src="img/bar.jpg">
                <div class="header">
                    <div class="blur"></div>
                    <div class="header-text">
                        <div class="panel panel-success" style="height: 247px;">
                            <div class="panel-heading">
                                <h3 style="color: #428BCA; text-align:center">${bar.nome}</h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    Todays Event: <b id="evento"></b>
                                </div>
                                <div class="form-group">
                                    Brinde: <b id="brinde">${bar.premiacaoTO.nome}</b>
                                </div>
                                <div class="form-group">
                                    User Rating: <b id="user_rate"></b>
                                    <br>
                                    <a style="z-index: 0" class="btn btn-primary pull-right" target="_blank" href="../Customer/SelectEstablishmentIdServlet?barId=${bar.estabelecimentoID}">Ir para o bar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
    
<div class="row">        
<!--  Bar form  -->
        
<!-- .row -->
</div>
    <!-- Page Content -->
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../Customer/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../Customer/js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>

