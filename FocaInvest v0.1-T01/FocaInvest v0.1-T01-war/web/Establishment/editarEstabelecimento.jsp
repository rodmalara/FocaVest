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
		
		function editarSucesso(){
			window.alert("Estabelecimento editado com sucesso!");
			location.href="menu.html";
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
				
					alert("Estabelecimento atualizado com sucesso!");
					return true;
			
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
		
		
		//site para gerar cnpj válido: http://www.geradorcnpj.com/
		function validarCNPJ(){
			
			cnpj = document.f1.cnpj.value;
			
			cnpj = cnpj.replace(/[^\d]+/g,'');

				
			if (cnpj.length != 14){
				window.alert("O CNPJ inserido é inválido");
				return false;
			}

			
			
			// Elimina CNPJs invalidos conhecidos
			if (cnpj == "00000000000000" || 
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
						pos = 9;
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
		.profile-img{
                    margin-top: 30px;
                    margin-left: 250px;
                    margin-bottom: 20px;
                    height: 150px;
                    width: 150px;
                }
				
		</style>
        </head>
<body>

	<form name="f1" method="post" id="formulario" action="UpdateEstabelecimentoServlet" onsubmit="editarSucesso()">
	<h1 id="h1_texto">Atualize seu estabelecimento:</h1>
       <div class="box">
			<label>
			<span>Nome do estabelecimento: </span>
                        <input type="text" required class="input_text" name="estabelecimento" id="name" value="${requestScope.estabelecimento.nome}" />
			</label>
			<label>
			<span>Senha: </span>
               <input type="password" required class="input_text" name="senha1" id="input_login" value="${requestScope.estabelecimento.senha}"/>
			</label>
			<label>
			<span>Confirmar senha: </span>
				<input type="password" required class="input_text" name="senha2" id="input_login" value="${requestScope.estabelecimento.senha}" onblur="validarCampos()"/>
			</label>
			<label>
			<span>E-mail: </span>
                        <input type="text" required class="input_text" name="email" id="name" value="${requestScope.estabelecimento.email}" onblur="validarEmail()" />
			</label>
			<label>
			<span>CNPJ: </span>
                        <input type="text" required class="input_text" name="cnpj" id="input_cnpj" value="${requestScope.estabelecimento.cnpj}" onblur="validarCNPJ()"/>
			</label>	
			<label>
			<span>Telefone: </span>
				<input type="text" required class="input_text" name="telefone" id="input_cnpj" value="${requestScope.estabelecimento.telefone}" onblur="validarTelefone()"/>
			</label>
			<input type="submit" class="button" value="Enviar"/>
			<input type="button" class="button" value="Cancelar" onclick="abrirIndex()" />	
		</div>
		
			
			
	</form>

</body>	
</html>
