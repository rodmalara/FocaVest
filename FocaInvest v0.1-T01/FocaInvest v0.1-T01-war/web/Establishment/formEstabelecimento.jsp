<%-- 
    Document   : formEstabelecimento.jsp
    Created on : 25/05/2015, 19:55:23
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>FOCA VEST</title>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/jquery.alerts.css" rel="stylesheet" type="text/css">
        <script src="js/jquery.js"></script>
        <script src="js/jquery.alerts.js"></script>        
        <script>
           			
		function abrirIndex(){ 
		location.href="index.html"; 
		} 
		
		</script>
		
		<style type="text/css">
		
		*{ margin:0; padding:0;}
		
		body{ font:100% normal Arial, Helvetica, sans-serif; background:#000000;}
		
		form{
		width:550px;
		position:relative;
		top:90px;
		left:350px;
		border:0px solid #00FF00;
		}
		
		input,select,textarea{margin:0; padding:0; color:#000000;}
		
		div.formulario { 
		margin:0 auto; 
		width:450px; 
		background:#000000; 
		position:relative; 
		top:1px;
		bottom:1px;
		left:400px;
		border:1px solid #32CD32; }
		

		#h1_texto { 
		color:#32CD32; 
		position:relative;
		bottom:60px;
		left:40px;
		font-size:18px; 
		text-transform:uppercase; 
		padding:10px 0 10px 10px; 
		border-bottom:1px solid #696969; 
		border-top:1px solid #696969; } 

		div.box{
		
		position:relative;
		bottom:60px;
		left:50px;
		
		}
		
		
		div.box label { 
		width:100%;
		display: block; 
		position:relative;
		
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
		
		#input_cnpj { padding:10px 10px; 
		width:125px; 
		background:#FFFFFF; 
		border:solid 3px #32CD32;}
		
		#input_login { padding:10px 10px; 
		width:300px; 
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
		
		#alertNormal{
		
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
		
	
		
		.img-200-200 {
		position:relative;
		left:600px;
		display: flex;
		align-items: center;
		justify-content: top;
		flex-direction: column;	
		width: 100px;
		height: 100px;}
		
		.img-barra-1{
		
		position:relative;
		left:8px;
		bottom: 60px;
		display: flex;
		align-items: center;
		justify-content: top;
		flex-direction: column;	
		width: 550px;
		height: 10px;
		
		}
		
		.img-barra-2{
		
		position:relative;
		left:730px;
		bottom: 70px;
		display: flex;
		align-items: center;
		justify-content: top;
		flex-direction: column;	
		width: 625px;
		height: 10px;
		
		}
		
				
		</style>
		
		
	</head>
	
<body>

	<div class="head">
		<img class="img-200-200" src="caneca.jpg"/>
		<img class="img-barra-1" src="barra.jpg"/>
		<img class="img-barra-2" src="barra.jpg"/>
	</div>

    <form name="f1" method="post" id="formulario" action="InsertEstabelecimentoServlet">
	<h1 id="h1_texto">Cadastre seu estabelecimento:</h1>
		<div class="box">
			<!--<label>
				<span>Nome: </span>
				<input type="text" required class="input_text" name="nome" id="name" placeholder="Nome do seu estabelecimento"/>
			</label>-->
			<label>
			<span>Nome: </span>
				<input type="text" required class="input_text" name="estabelecimento" id="input_login" placeholder="Nome do estabelecimento"/>
			</label>
                        <label>
			<span>E-mail: </span>
				<input type="text" required class="input_text" name="email" id="name" placeholder="contato@contato.com"/>
			</label>
			<label>
			<span>Senha: </span>
				<input type="password" required class="input_text" name="senha" size="20" id="input_login" placeholder="Senha para login" />
			</label>
			<label>
			<span>Confirmar senha: </span>
				<input type="password" required class="input_text" name="senha2" size="20" id="input_login" placeholder="Confirme sua senha"/>
			</label>
			<label>
			<span>CNPJ: </span>
				<input type="text" required class="input_text" name="cnpj" id="input_cnpj" placeholder="000-000-000-00"/>
			</label>	
			<label>
			<span>Telefone: </span>
				<input type="text" required class="input_text" name="telefone" id="input_cnpj" placeholder="(00)0000-0000"/>
			</label>
			<input type="submit" id="alertNormal"  value="Confirmar" />
			<input type="button" class="button" value="Cancelar" onclick="abrirIndex()" />
			
			
		</div>
		
			
			
	</form>

</body>	
</html>