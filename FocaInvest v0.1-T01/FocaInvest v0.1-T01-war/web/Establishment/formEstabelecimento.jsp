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
		
		function validarCampos(){
			
			senha1 = document.f1.senha1.value;
			senha2 = document.f1.senha2.value;
			
			if (senha1 != senha2)
				window.alert("Senha e confirmação de senha com valores diferentes!");
			
			
		}
		
		function validarEmail(){
			
			email = document.f1.email.value;
			
			if (email == "" || document.f1.email.value.indexOf('@') == -1 || document.f1.email.value.indexOf('.') == -1){
				
				window.alert("Por favor, informe um e-mail válido!");
				
			}
				
			
			
		}
		
		function camposVazios(){
			
			estabelecimento = document.f1.estabelecimento.value;
			email = document.f1.email.value;
			senha1 = document.f1.senha1.value;
			senha2 = document.f1.senha2.value;
			cnpj = document.f1.cnpj.value;
			telefone = document.f1.telefone.value;
			
				if(estabelecimento == ""){
					window.alert("Preencha o campo Estabelecimento!");
					return false;
				} 
					if(email == ""){
					window.alert("Preencha o campo E-mail!");
					return false;
				}
					if(senha1 == ""){
					window.alert("Preencha o campo Senha!");
					return false;
				}
					if(senha2 == ""){
					window.alert("Preencha o campo Confirmar Senha!");
					return false;
				}
					if(cnpj == ""){
					window.alert("Preencha o campo CNPJ!");
					return false;
				}
					if(telefone == ""){
					window.alert("Preencha o campo Telefone!");
					return false;
				}	
				
					
					return true;
			
		}
		
		//site para gerar cnpj válido: http://www.geradorcnpj.com/
		function validarCNPJ(){
			
			cnpj = document.f1.cnpj.value;
			
			cnpj = cnpj.replace(/[^\d]+/g,'');

				
			if (cnpj.length != 14){
				window.alert("O CNPJ inserido é inválido");
				return false;
			}

			
			
			// Elimina CNPJs invalidos conhecidos
			if (
				cnpj == "11111111111111" || 
				cnpj == "22222222222222" || 
				cnpj == "33333333333333" || 
				cnpj == "44444444444444" || 
				cnpj == "55555555555555" || 
				cnpj == "66666666666666" || 
				cnpj == "77777777777777" || 
				cnpj == "88888888888888" || 
				cnpj == "99999999999999"){
				window.alert("O CNPJ inserido é inválido");
				return false;
			}
					
					
			// Valida DVs
			tamanho = cnpj.length - 2;	
			numeros = cnpj.substring(0,tamanho);
			digitos = cnpj.substring(tamanho);
			soma = 0;
			pos = tamanho - 7;
			for (i = tamanho; i >= 1; i--) {
				soma += numeros.charAt(tamanho - i) * pos--;
					if (pos < 2)
						pos =
                                                    9;
			}
			resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
			if (resultado != digitos.charAt(0)){
				window.alert("O CNPJ inserido é inválido");
				return false;
			}
			
		
			tamanho = tamanho + 1;
			numeros = cnpj.substring(0,tamanho);
			soma = 0;
			pos = tamanho - 7;
			for (i = tamanho; i >= 1; i--) {
				soma += numeros.charAt(tamanho - i) * pos--;
					if (pos < 2)
						pos = 9;
			}
			resultado = soma % 11 < 2 ? 0 : 11 - soma % 11;
				if (resultado != digitos.charAt(1)){
				window.alert("O CNPJ inserido é inválido");
				return false;
			}else{		
				return true;
			}
			
		}
		
		function validarTelefone(){
			
			if (isNaN(f1.telefone.value)) {    
			alert("Digite um telefone válido!");    
			f1.telefone.select();    
			return false;    
				} 
				else {  
				return true;  
				}
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
		width:140px; 
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
		
		#obrigatorio{
			font-size: 10px;
			color: #32CD32;
			
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
		<p id="obrigatorio">Todos os campos são de preenchimento obrigatório</p>
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
				<input type="text" required class="input_text" name="email" id="name" placeholder="contato@contato.com" onblur="validarEmail()"/>
			</label>
			<label>
			<span>Senha: </span>
				<input type="password" required class="input_text" name="senha1" size="20" id="input_login" placeholder="Senha para login" />
			</label>
			<label>
			<span>Confirmar senha: </span>
				<input type="password" required class="input_text" name="senha2" size="20" id="input_login" placeholder="Confirme sua senha" onblur="validarCampos()"/>
			</label>
			<label>
			<span>CNPJ: </span>
				<input type="text" required class="input_text" name="cnpj" id="input_cnpj" placeholder="00.000.000/0000-00" onblur="validarCNPJ()"/>
			</label>	
			<label>
			<span>Telefone: </span>
				<input type="text" required class="input_text" name="telefone" id="input_cnpj" placeholder="(00)0000-0000" onblur="validarTelefone()" />
			</label>
			<input type="submit" id="alertNormal"  value="Confirmar"/>
			<input type="button" class="button" value="Cancelar" onclick="abrirIndex()" />
			
			
		</div>
		
			
			
	</form>

</body>	
</html>