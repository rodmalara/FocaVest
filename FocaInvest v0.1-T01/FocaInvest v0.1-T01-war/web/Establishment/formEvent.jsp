<%-- 
    Document   : formEvent
    Created on : 29/05/2015, 12:30:18
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	
	<title>FOCA VEST</title>

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
		width:550px;
		background:#000000; 
		position:relative; 
		top:100px; 
		left:5px; 
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
		
		#input_numPessoas { padding:10px 10px; 
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

	<form name="meuForm" method="post" id="formulario" action="InsertEventServlet">
	<h1 id="h1_texto">Cadastre seu evento:</h1>
	<div class="box">
			<label>
			<span>Nome: </span>
				<input type="text" class="input_text" name="nome" id="name" />
			</label>
			<label>
			<span>Descrição: </span>
				<textarea cols="30" rows="40" name="descricao" id="input_descricao" /></textarea>
			</label>
			<label>
			<span>Número de pessoas: </span>
				<input type="text" class="input_text" name="qtdPessoa" id="input_numPessoas" />
			</label>
			<label>
			<span>Data: </span>
				<input type="text" class="input_text" name="data" id="input_data" />
			</label>
			<label>
			<span>Preço</span>
				<input type="text" class="input_text" name="preco" id="input_data" />
			</label>
			<input type="submit" class="button" value="Enviar"/>
			<input type="button" class="button" value="Cancelar" onClick="eventoCancelar()"/>
	</div>
	</form>

</body>

</html>