<%-- 
    Document   : Establishmento
    Created on : 08/06/2015, 00:56:12
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
	<!-- Preloader 
	<div id="preloader">
		<div id="loadanimation"></div>
	</div>
	-->
	
        
        <c:set var="bar" value="${requestScope.bar}"></c:set>
        
        <ul>
            <h1>Colocar Header</h1>
            <li> <c:if test="${sessionScope.user_data == null}" >
                            <a class="" href="SignIn.jsp">Entrar</a>
                        </c:if>
                        <c:if test="${sessionScope.user_data != null}">
                            ${sessionScope.user_data.nome}
                </c:if>
            </li>
        </ul>
        
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
					
				   	
					</ul> 

					
				</li>
			</ul>
		</div>
	</div>

        <div class="container clearfix block-sep"></div>

    
    
		<!-- Top Section Home -->
		<div class="container top-section">
			<div class="row">
                            <div class="col-sm-12">
                            <form method="post" action="GetGiftServlet" >
                                <!-- Latest Albums -->
				<div class="col-sm-6 col-md-4">
					<div class="album">
						<img src="../Customer/assets/img/album/latest-1.jpg" alt="Album" class="img-responsive" style="width:100%" >
						<div class="info">
                                                    
                                                    <button class="buy" type="submit" style="background-color: #2c2c2c; border-color:#626262" ><a class="" href="#" ><i class="flaticon-grocery6"></button></i></a>
							<h5>${bar.premiacaoTO.nome}</h5>
							<p>${bar.premiacaoTO.pontoBrinde}</p>
						</div>
					</div>
				</div>
                            </form>
                             
                                                
                        <div class="col-sm-7">
                            <div class="blog-content">
                            
                                
                                    <h1 style="color:#fff">${bar.nome}</h1>
                                    <h4 style="color:#fff">Descrição:${bar.descricao}</h4>
                                    <h4 style="color:#fff">Telefone:${bar.telefone}</h4>
                                    <h4 style="color:#fff">E-mail:${bar.email}</h4>
                                </div>
                            
                                
                        </div>
                    </div>
                </div>
            </div>
	<!-- Block Separator -->
        <div class="container clearfix block-sep"></div>
        <!-- Blog -->
	<div class="container">
		<div class="row">
			<!-- Blog Content -->
			<div class="col-sm-11">
				<div class="blog-content">
					<div class="line-sep">
							<span class="line"></span>
						</div>
					<!-- Article -->
                                        <c:forEach items="${requestScope.listEvento}" var="event">
                                        <div class="article clearfix">
                                                <div class="blog-img">
							<img src="../Customer/assets/img/blog/article-1.jpg" alt="img" class="img-responsive">
						</div>

						<div class="article-content">
							<a class="heading" href="event-inside.html"> ev ${event.nome}</a>
							<ul class="article-info">
								<li><a href="#"><i class="icon-user"></i> 1000</a></li>
								<li><a href="#"><i class="icon-calendar"></i> 6 june 2015</a></li>
								<li><a href="#"><i class="icon-note-beamed"></i>Arrocha do poder</a></li>
							</ul>
							<p>${event.descricao}</p>
						
						</div>
                                                    <form method="post" action="GoEventServlet?eventId=${event.eventoID}&barId=${bar.estabelecimentoID}">
                                                        <input class="btn ripple-effect btn-primary" type="submit" name="GoEvent" value="Ir para o evento">
                                                    </form>
					
                                        </div> <!-- // Article -->					
                                        </c:forEach>
                                </div> 
			</div>
			
		</div>


	<!-- Block Separator -->
	<div class="container clearfix block-sep"></div>
	<!-- Footer -->
	
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
	</script>
</body>
</html>
