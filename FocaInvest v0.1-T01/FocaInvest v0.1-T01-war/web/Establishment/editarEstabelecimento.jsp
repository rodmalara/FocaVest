<%-- 
    Document   : editarEstabelecimento
    Created on : 25/05/2015, 21:17:19
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>   
	<head>
		<title>FOCA VEST</title>
		<meta charset="utf-8">
		
		<script type="text/javascript">
		
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
		top:5px;
		bottom:50px;
		left:400px;
		border:1px solid #32CD32; }
		

		#h1_texto { 
		color:#32CD32; 
		font-size:18px; 
		text-transform:uppercase; 
		padding:10px 0 10px 10px; 
		border-bottom:1px solid #696969; 
		border-top:1px solid #696969; } 

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

	<form name="meuForm" method="post" id="formulario">
	<h1 id="h1_texto">Atualize seu estabelecimento:</h1>
		<div class="box">
			
			<label>
			<span>Nome do estabelecimento: </span>
                        <input type="text" class="input_text" name="nome" id="name" value="${requestScope.estabelecimento.nome}" />
			</label>
			<label>
			<!--<span>Usuário: </span>
                        <input type="text" class="input_text" name="nome" id="input_login" value=""/>
			</label>-->
			<label>
			<span>Senha: </span>
                        <input type="password" class="input_text" name="nome" id="input_login" value="${requestScope.estabelecimento.senha}"/>
			</label>
			<label>
			<span>Confirmar senha: </span>
				<input type="password" class="input_text" name="nome" id="input_login" value="${requestScope.estabelecimento.senha}"/>
			</label>
			<label>
			<span>E-mail: </span>
                        <input type="text" class="input_text" name="nome" id="name" value="${requestScope.estabelecimento.email}" />
			</label>
			<label>
			<span>CNPJ: </span>
                        <input type="text" class="input_text" name="cnpj" id="input_cnpj" value="${requestScope.estabelecimento.cnpj}"/>
			</label>	
			<label>
			<span>Telefone: </span>
				<input type="text" class="input_text" name="role" id="input_cnpj" ${requestScope.estabelecimento.telefone}/>
			</label>
			<input type="submit" class="button" value="Enviar"/>
			<input type="button" class="button" value="Cancelar" onclick="abrirIndex()" />	
		</div>
		
			
			
	</form>

</body>	
</html>