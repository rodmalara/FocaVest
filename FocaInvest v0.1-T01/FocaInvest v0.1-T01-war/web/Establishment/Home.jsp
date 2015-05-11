<%-- 
    Document   : Home
    Created on : 11/05/2015, 00:43:33
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<head>
			<title> FocaVest </title>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="../css/bootstrap.css" rel="stylesheet">
			<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script> 
			
			</head>

<body>

		<!-- Incluindo o jQuery que é requisito do JavaScript do Bootstrap -->
		<!--<script src="http://code.jquery.com/jquery-latest.js"></script>-->

		<!-- Incluindo o JavaScript do Bootstrap -->
		<script src="../js/bootstrap.min.js"></script>
		

	<div class="container">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
 
					<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
					<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</a>
 
			<!-- Be sure to leave the brand out there if you want it shown -->
      <a class="brand">Brand</a>
 
      <!-- Everything you want hidden at 940px or less, place within here -->
      <div class="nav-collapse collapse">
        <!-- .nav, .navbar-search, .navbar-form, etc -->
<ul class="nav navbar-nav">
  <li><a href="#" target="destino">Home</a></li>
  <li><a href="UpdateEstablishment.jsp" target="destino">Estabelecimento</a></li>
  <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Evento<span class="caret"></span></a>
      <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
      </ul>      
      <!--<a href="InsertEvent.jsp" target="destino">Evento</a>-->
  </li>
  <li><a href="#" target="destino">Premiação</a></li>
</ul>
      </div>
 
    </div>
  </div>
</div> 

<iframe name="destino" width="100%" height="600">

</body>