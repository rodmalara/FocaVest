<%-- 
    Document   : formPremio
    Created on : 28/05/2015, 21:44:57
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">

	<script type="text/javascript">
	
		function eventoCancelar(){
				
				location.href = "home.html";
			}
			
	</script>
	

<style type="text/css">

body{ font:100% normal Arial, Helvetica, sans-serif; background:#000000;}
	
		input,select,textarea{margin:0; padding:0; color:#000000;}
		
		#formulario{
		
		margin:0 auto; 
		width:550px; <!--aqui na largura-->
		background:#000000; 
		position:relative; 
		top:100px; <!--aqui na posicao de cima-->
		left:5px; <!--aqui na posicao esquerda-->
		border:0px solid #32CD32;
		
		}
		
		
		div.formulario { 
		margin:0 auto; 
		width:450px; 
		background:#FFFFFF; 
		position:relative; 
		top:200px; 
		left:400px;
		border:1px solid #32CD32; }

		#h1_texto { 
		color:#32CD32; 
		font-size:18px; 
		text-transform:uppercase; 
		padding:10px 0 10px 10px; 
		border-bottom:1px solid #696969; 
		border-top:1px solid #696969; } 
		
		#input_descricao { padding:10px 10px; 
		width:400px; 
		height:120px;
		background:#FFFFFF; 
		border:solid 3px #32CD32;}
		
		#input_numPremio { padding:10px 10px; 
		width:80px; 
		background:#FFFFFF; 
		border:solid 3px #32CD32;}
		
		#input_data { padding:10px 10px; 
		width:125px; 
		background:#FFFFFF; 
		border:solid 3px #32CD32;}


		div.box label { 
		width:100%;
		display: block; 
		background:#000000; 
		border-top:1px solid #000000; 
		border-bottom:1px solid #000000; 
		padding:10px 0 10px 0; } 

		div.box label span { 
		display: block; 
		color:#BDBDBD; 
		font-size:12px; 
		float:left; 
		width:100px; 
		text-align:right; 
		padding:5px 20px 0 0; } 

		div.box .input_text { padding:10px 10px; 
		width:400px; 
		background:#FFFFFF; 
		border:solid 3px #32CD32;}
		
		
		div.box .button{ 
		margin:0 0 10px 0; 
		float:center;
		padding:4px 7px; 
		background:#32CD32;
		font-weight:bold;
		border:none;
		height:32px;
		position: relative; 
		top:10px; 
		left:355px; 
		width:100px; 
		}
		
</style>
</head>
<body>

	<form name="meuForm" method="post" id="formulario" action="InsertPremioServlet">
	<h1 id="h1_texto">Cadastre o prêmio:</h1>
	<div class="box">
			<label>
			<span>Pontos: </span>
				<input type="text" class="" name="pontos" id="input_numPremio" />
			</label>
			<label>
			<span>Nome: </span>
				<input type="text" class="input_text" name="nome" id="name" />
			</label>
			<label>
			<span>Início: </span>
				<input type="text" class="input_text" name="dataInicio" id="input_data" />
			</label>
			<label>
			<span>Válido até: </span>
				<input type="text" class="input_text" name="dataFinal" id="input_data" />
			</label>
			<label>
			<input type="submit" class="button" value="Enviar"/>
			<input type="button" class="button" value="Cancelar" onClick="eventoCancelar()"/>
			</label>
	</div>
	</form>

</body>

</html>