<%-- 
    Document   : listaDeBares
    Created on : 08/06/2015, 01:51:07
    Author     : Matheus
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>EuVou!</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- CSS -->
	<link rel="stylesheet" href="../Customer/assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../Customer/assets/rs-plugin/css/settings.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="../Customer/assets/css/style.css" />
	<link rel="stylesheet" type="text/css" href="../Customer/assets/css/style-blue.css" />
	<!-- jQuery -->
	<script type="text/javascript" src="../Customer/assets/js/jquery.js"></script>
	<script type="text/javascript" src="../Customer/assets/js/modernizr.custom.js"></script>
</head>
<body>
	

	<!-- Navigation Bar -->
	<nav class="navbar navbar-default" >
	  	<div class="container">
		    <!-- Brand and toggle get grouped for better mobile display -->
                    <h1>Colocar header</h1> 
                    <c:if test="${sessionScope.user_data == null}">
                        <a href="SignIn.jsp">Entrar</a>
                        </c:if>
                        <c:if test="${sessionScope.user_data != null}">
                            <p>${sessionScope.user_data.nome}</p>
                        </c:if>
		</nav>



	<!-- Slider -->
	<div class="col-sm-10 col-sm-push-1">
        <div class="tp-banner-container">
		<div class="tp-banner" >
			<ul>
				<!-- SLIDE 1 -->
				<li data-transition="slideleft" data-masterspeed="300" data-slotamount="7">
					<!-- MAIN IMAGE -->
					<img src="../Customer/assets/img/slider/slide2.jpg"  alt="slidebg2"  data-bgfit="cover" data-bgposition="center top" data-bgrepeat="no-repeat">
					<!-- cap 0 -->
					
				</li>

				<!-- SLIDE 2 -->
				<li data-transition="slideright" data-masterspeed="300" data-slotamount="7">
					<!-- MAIN IMAGE -->
					<img src="../Customer/assets/img/slider/slide1.jpg"  alt="slidebg1"  data-bgfit="cover" data-bgposition="center top" data-bgrepeat="no-repeat">
					<!-- cap 0 -->
					
                                </li>	
                        </ul>
		</div>
	</div>
        </div>
				
		
	
	<!-- Block Separator -->
	<div class="container clearfix block-sep"></div>

	<!-- Blog -->
	<div class="container">
		<div class="row">
			<!-- Blog Masonry -->
			<div class="col-sm-12">
				<div id="blog-masonry" class="blog-masonry clearfix">
					<div class="masonry-trigger"></div>
                                        <c:forEach items="${requestScope.barList}" var="bar">
					<div class="article">
						<a href="blog-inside-post.html" class="img">
							<img class="img-responsive" src="../Customer/assets/img/blog/masonry-1.jpg" alt="Post IMG">
							
						</a>
						<div class="content">
							<h4></h4>
							<ul class="info">
								<li><span class="icon-user">${bar.nome}</span></li>
								<li><span class="icon-calendar"></span></li>
								<li><span class="icon-note-beamed">${bar.premiacaoTO.nome}</span></li>
							</ul>
							<p>${bar.descricao}</p>
							<a href="http://localhost:8080/FocaInvest%20v0.1-T01-war/Customer/SelectEstablishmentIdServlet?barId=${bar.estabelecimentoID}" class="read-more">Visitar</a>
						</div>
					</div>
                                        </c:forEach>

					
					
				</div>
			</div>		
		</div>
	</div>

	<!-- Block Separator -->
	<div class="container clearfix block-sep"></div>
	
	
	<!-- jQuery -->
	<script type="text/javascript" src="../Customer/assets/js/smooth-scroll.js"></script>
	<script type="text/javascript" src="../Customer/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../Customer/assets/js/respond.min.js"></script>
	<script type="text/javascript" src="../Customer/assets/js/masonry.js"></script>
	<script type="text/javascript" src="../Customer/assets/js/lightbox.min.js"></script>
	<script type="text/javascript" src="../Customer/assets/js/js.js"></script>

	<script type="text/javascript" src="../Customer/assets/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
	<script type="text/javascript" src="../Customer/assets/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	
	<script type="text/javascript" src="../Customer/assets/jplayer/jquery.jplayer.min.js"></script>
	<script type="text/javascript" src="../Customer/assets/jplayer/jplayer.playlist.min.js"></script>
	<script src="../Customer/assets/js/countdown.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
	    
			// jQuery REVOLUTION Slider
			"use strict";
			jQuery('.tp-banner').show().revolution(
			{
				delay:4000,
				startwidth:1920,
				startheight:720,
				hideThumbs:100,
				fullWidth:"on",
				fullScreen:"off",
				navigationStyle: "off",
				shadow: 0,
				autoHeight:"off",									
			});


			// CountDown
			$("#countdown").countdown({
				date: "30 december 2015 12:00:00", // Edit this line
				format: "on"
			},
			function() {
				// callback function
			});
			$("#countdown-2").countdown({
				date: "30 december 2015 12:00:00", // Edit this line
				format: "on"
			},
			function() {
				// callback function
			});
		});
	</script>
</body>
</html>