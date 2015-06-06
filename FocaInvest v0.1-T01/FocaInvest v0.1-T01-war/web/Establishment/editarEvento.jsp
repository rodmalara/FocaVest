<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	
	<script type="text/javascript">
	
		function eventoCancelar(){
				
				location.href = "home.html";
			}
			
		function eventoVoltar(){
				
			location.href = "listaEventos.html";
		}
		
		function camposVazios(){
			
			nome = document.f1.nome.value;
			descricao = document.f1.descricao.value;
			numero = document.f1.qtdPessoa.value;
			data = document.f1.data.value;
			preco = document.f1.preco.value;
			
			
			if (nome == ""){
				window.alert("Preencha o campo Nome!");
				return false;
			}
			if(descricao == ""){
				window.alert("Preencha o campo Descrição!");
				return false;
			}
			if(numero == ""){
				window.alert("Preencha o campo Número de pessoas!");
				return false;
			}
			if(data == ""){
				window.alert("Preencha o campo Data!");
				return false;
			}
			if(preco == ""){
				window.alert("Digite o campo Preço!");
				return false;
			}
			
			window.alert("Evento editado com sucesso!");
			return true;
			
		}
		
		function validarFormatoData(){
			
			data = document.f1.data.value;
			var dia = data.substring(0,2)
			var mes = data.substring(3,5)
			var ano = data.substring(6,10)
			
			//Criando um objeto Date usando os valores ano, mes e dia.
			var novaData = new Date(ano,(mes-1),dia);
 
			var mesmoDia = parseInt(dia,10) == parseInt(novaData.getDate());
			var mesmoMes = parseInt(mes,10) == parseInt(novaData.getMonth())+1;
			var mesmoAno = parseInt(ano) == parseInt(novaData.getFullYear());
 
			if (!((mesmoDia) && (mesmoMes) && (mesmoAno)))
			{
				alert('Data informada é inválida!');   
				obj.focus();    
				return false;
			}  
				return true;
			
			
		}
		
		
		
	</script>
	

<style type="text/css">

body{ font:100% normal Arial, Helvetica, sans-serif; background:#000000;}
	
		input,select,textarea{margin:0; padding:0; color:#000000;}
		
		#formulario{
		
		margin:0 auto; 
		width:1000px; 
		background:#000000; 
		position:relative; 
		top:100px; 
		left:200px;
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

	<form name="f1" method="post" id="formulario" action="EditEventoServlet?action=<c:out value="${evento.eventoID}"/>" items="${evento}" var="evento">
	<h1 id="h1_texto">Atualize seu evento:</h1>
	<div class="box">
			<label>
			<span>Nome: </span>
				<input type="text" class="input_text" name="nome" id="name" value ="${evento.nome}"/>
			</label>
			<label>
			<span>Descrição: </span>
				<textarea cols="30" rows="40" id="input_descricao" name="descricao"/>${evento.descricao}</textarea>
			</label>
			<label>
			<span>Número de pessoas: </span>
				<input type="text" class="input_text" name="qtdPessoa" id="input_numPessoas" value ="${evento.qtdPessoa}"/>
			</label>
			<label>
			<span>Data: </span>
				<input type="text" class="input_text" name="data" id="input_data" value ="${evento.data}" onblur="validarFormatoData()"/>
			</label>
			<label>
			<span>Preço:</span>
				<input type="text" class="input_text" name="preco" id="input_data" value ="${evento.preco}"/>
			</label>
			<input type="submit" class="button" value="Enviar" onclick="camposVazios()"/>
			<input type="button" class="button" value="Voltar" onClick="eventoVoltar()"/>
			<input type="button" class="button" value="Cancelar" onClick="eventoCancelar()"/>
	</div>
	</form>

</body>

</html> ?
