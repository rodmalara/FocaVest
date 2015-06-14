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
			
		function validarData(){
			
			dataInicio = document.f1.dataInicio.value;
			dataFim = document.f1.dataFinal.value;
			
			var diaInicio = (dataInicio.split('/')[0]);
			var mesInicio = (dataInicio.split('/')[1]);
			var anoInicio = (dataInicio.split('/')[2]);
 
			var diaFim = (dataFim.split('/')[0]);
			var mesFim = (dataFim.split('/')[1]);
			var anoFim = (dataFim.split('/')[2]);
 
			var dataInicio = anoInicio+'-'+mesInicio+'-'+diaInicio;
			var dataFim = anoFim+'-'+mesFim+'-'+diaFim;
 
			if(Date.parse(dataInicio) > Date.parse(dataFim)){
				window.alert("Data de início maior do que data final!");
				return false;
			}else if(Date.parse(dataFim) < Date.parse(dataInicio)){
 
			}else{
			return true;
				
				}
			
			
		}
		
			function camposVazios(){
				
				pontos = document.f1.pontos.value;
				nome = document.f1.nome.value;
				inicio = document.f1.dataInicio.value;
				fim = document.f1.dataFinal.value;
				
				if(pontos == ""){
					window.alert("Insira o campo Pontos!");
					return false;
				}
				if(nome == ""){
					window.alert("Insira o campo Nome!");
					return false;
				}
				if(inicio == ""){
					window.alert("Insira o campo Data Início!");
					return false;
				}
				if(fim == ""){
					window.alert("Insira o campo Válido até!");
					return false;
				}
				window.alert("Prêmio cadastrado com sucesso!");
				return true;
				
				
			}

			function validarFormatoDataFinal(){
			
			data = document.f1.dataFinal.value;
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
				validarData();
				return true;
			
			
		}

				
			function validarFormatoDataInicio(){
			
			data = document.f1.dataInicio.value;
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
		width:550px; <!--aqui na largura-->
		background:#000000; 
		position:relative; 
		top:100px; <!--aqui na posicao de cima-->
		left:5px; <!--aqui na posicao esquerda-->
		border:0px solid #32CD32;
		
		}
		
		#obrigatorio{
			font-size: 10px;
			color: #32CD32;
			
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
		position: re; 
		width:100px; 
		}
		
</style>
</head>
<body>
	<div class="box">
            <form name="f1" method="post" id="formulario" action="InsertPremioServlet" enctype="multipart/form-data">
            <h1 id="h1_texto">Cadastre o prêmio:</h1>
            <img style="margin-left: 170px;" src="${bar.imgPath}" height="200px" width="200px">
            <br>
            <br>
                <span style="color: white">Faça um upload da imagem de seu bar: </span>
                <br>
                <br>
                <input class="" type="file" name="dataFile" id="fileChooser"/><br/><br/>
        <p id="obrigatorio">Todos os campos são de preenchimento obrigatório</p>
			<label>
			<span>Pontos: </span>
				<input type="text" required class="" name="pontos" id="input_numPremio" placeholder="Qtd"/>
			</label>
			<label>
			<span>Nome: </span>
				<input type="text" required class="input_text" name="nome" id="name" placeholder="Nome do prêmio"/>
			</label>
			<label>
			<span>Início: </span>
				<input type="text" required class="input_text" name="dataInicio" id="input_data" placeholder="00/00/0000" onsubmit="validarFormatoDataInicio()"/>
			</label>
			<label>
			<span>Válido até: </span>
				<input type="text" required class="input_text" name="dataFinal" id="input_data" placeholder="00/00/0000" onsubmit="validarFormatoDataFinal()"/>
			</label>
			<label>
			<input type="submit" class="button" value="Enviar" onclick="camposVazios()"/>
			<input type="button" class="button" value="Cancelar" onClick="eventoCancelar()"/>
			</label>
        </form>
        </div>
	</div>
                    
</body>

</html>