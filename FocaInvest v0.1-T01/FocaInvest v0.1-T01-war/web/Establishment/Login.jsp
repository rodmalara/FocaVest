<%-- 
    Document   : Login
    Created on : 11/05/2015, 00:09:29
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<head>
		<title> LOGIN </title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="../css/bootstrap.css" rel="stylesheet">
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script> 
		<script type="text/javascript">
			$(document).ready(function(){
				$("a[rel=modal]").click( function(ev){
					ev.preventDefault();

					var id = $(this).attr("href");

					var alturaTela = $(document).height();
					var larguraTela = $(window).width();
	
					//colocando o fundo preto
					$('#mascara').css({'width':larguraTela,'height':alturaTela});
					$('#mascara').fadeIn(1000);	
					$('#mascara').fadeTo("slow",0.8);

					var left = ($(window).width() /2) - ( $(id).width() / 2 );
					var top = ($(window).height() / 2) - ( $(id).height() / 2 );
					
					$(id).css({'top':top,'left':left});
					$(id).show();	
 				});

 				$("#mascara").click( function(){
 					$(this).hide();
 					$(".window").hide();
 				});

 				$('.fechar').click(function(ev){
 					ev.preventDefault();
 					$("#mascara").hide();
 					$(".window").hide();
 				});
			});
		</script>
		
		
		
		<style type="text/css">
		body{
		background-color: #000000;
		}
		
		.window{
    display:none;
    width:300px;
    height:90px;
    position:absolute;
    left:0;
    top:0;
    background:#000000;
    z-index:9900;
    padding:10px;
    border-radius:10px;
}
 
#mascara{
    display:none;
    position:absolute;
    left:0;
    top:0;
    z-index:9000;
    background-color:#FFF;
}
 
.fechar{display:block; text-align:right;}
		
		.head{
		display: flex;
		align-items: center;
		justify-content: top;
		flex-direction: column;		
		}
		
		.foot{
		height: 50px;
		display: flex;
		align-items: center;
		justify-content: bottom;
		flex-direction: column;	
		}
		
		.vertical-center {
		min-height: 100%;
		min-height: 75vh;
		display: flex;
		align-items: center;
		justify-content: center;
		flex-direction: column;
						}
		
		.img-200-200 {
		width: 400px;}
		
		
      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #000;
        border: 1px solid #00FF00;
        -webkit-border-radius: 0px;
           -moz-border-radius: 0px;
                border-radius: 0px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
		border: 1px solid #00FF00;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
		border: 1px solid #00FF00;
      }
	  
	  	  
	  
	  </style>
	  <link href="../css/bootstrap-responsive.css" rel="stylesheet">

	  
	</head>

	<body>

		<!-- Incluindo o jQuery que é requisito do JavaScript do Bootstrap -->
		<script src="http://code.jquery.com/jquery-latest.js"></script>

		<!-- Incluindo o JavaScript do Bootstrap -->
		<script src="js/bootstrap.min.js"></script>
		
	<div class="head">
		<img class="img-200-200" src="../img/caneca.jpg"/>
	</div>
   <div class="container-fluid">
	
		<div class="vertical-center">
			<form class="form-signin">
				<input type="text" class="input-block-level" placeholder="Username">
				<input type="password" class="input-block-level" placeholder="Password">
				<label style="color: white; border: 0px;" class="checkbox" >
				<input type="checkbox" value="remember-me"> Remember me
				</label>
				<button class="btn btn-large btn-primary" type="submit">Sign in</button>
				<!--<button class="btn btn-large btn-primary" type="submit">Sign up</button>-->
			</form>
				<p style="color: white;">Ainda não cadastrado?</p> 
				<a href="#janela1" rel="modal">Clique aqui.</a>
					<div class="window" id="janela1">
						<a href="#" class="fechar">X Fechar</a>
			<div class="control-group">
				<div class="controls">
					<label class="radio inline" for="radios-0">
						<input name="radios" id="radios-0" value="Option one" checked="checked" type="radio">
							Proprietario?
					</label>
					<label class="radio inline" for="radios-1">
						<input name="radios" id="radios-1" value="Option two" type="radio">
							Usuário?
						</label>
				</div>
			<a href="formEstabelecimento.html">Proprietário</a>
		</div>

</div>
		</div>
    </div>
	<div class="foot">
		<img class="img-200-200" src="../img/rodape.jpg"/>
	</div>
 
				
		<div id="mascara"></div>
	</body>

</html>
