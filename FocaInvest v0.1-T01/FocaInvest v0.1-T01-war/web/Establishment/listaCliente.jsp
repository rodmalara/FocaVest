<%-- 
    Document   : listaCliente
    Created on : May 30, 2015, 12:21:42 AM
    Author     : rodrigo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>

		<script type="text/javascript">
		
			function eventoCancelar(){
				
				location.href = "home.html";
			}
			
			function eventoVoltar(){
				
			location.href = "listaEventos.html";
		}
		
		
		function verificaCliente(){
			
			var checks;
			var i;
			
			checks = getElementByName("presenca");
			
			for(i=0; i<checks; i++){
				
				if(checks[i].checked == true){
					window.alert("Clientes confirmados com sucesso");
					return true;
				}else{
					window.alert("Nenhum cliente foi selecionado");
					return false;
				}
				
			}
			
		}
			
						
		
		</script>
		


<style type="text/css">



body{ font:100% normal Arial, Helvetica, sans-serif; background:#000000;}

.checkbox{
   width: 24px;
   height: 24px;
   background: transparent url(check2.png) no-repeat 0 50%
}
.checked{
   background: transparent url(check2.png) no-repeat 80% 50%
}

$(".checkbox").click(function(){
    $(this).toggleClass('checked')
});

input,select,textarea{margin:0; padding:0; color:#000000;}

#formulario{
		
		margin:0 auto; 
		width:700; 
		background:#000000; 
		position:relative; 
		top:100px; 
		left:1px;
		border:0px solid #32CD32;
		
		}
		
#formularioCorpoCSS{
		width:80%;
		height:450px;
		position:relative;
		top:1px;
		left:10%;
		border:2px solid #00FF00;
	}
		
		#Tabela{
			
				width: 40px;
				height: 70px;
		
		}
		

	#h1_texto { 
		color:#32CD32; 
		font-size:18px; 
		text-transform:uppercase; 
		padding:10px 0 10px 10px; 
		border-bottom:1px solid #696969; 
		border-top:1px solid #696969; 
		}
		

	#txtCliente{
		width: 500px;
		border-top:2px solid #32CD32; 
		border-bottom:2px solid #32CD32;
		border-right:2px solid #32CD32;
		border-left:2px solid #32CD32;
		padding:10px 10px 10px 10px; 
		color:#BDBDBD;
		background:#2E2E2E;
	
	}
	
	
	#botao{ 
		margin:0 0 10px 0; 
		float:center;
		padding:4px 7px; 
		background:#32CD32;
		font-weight:bold;
		border:none;
		height:32px;
		width:100px; 
		}


</style>

<body>
	<form id="formulario">
		<h1 id="h1_texto">Lista de clientes</h1>
		<table><!--acredito que aqui vai um loop para criar as linhas da tabela conforme o n�mero de eventos que v�o sendo cadastrados-->
		
		<tr id="Tabela"> <!--linha-->
			<td>
			<input type="checkbox" class="checkbox" value="presenca" name="presenca">
			<label>
			
				<input type="text" class="input_text" name="nome" id="txtCliente" disabled/>
			</label>
			</td>
		
		</table>
                
                <table id="headTable">
                 <tbody>
				 <tr>
					<td>Nome</td>
				 </tr>
        
                 <tbody>
                    <c:forEach items="${requestScope.consumidorList}" var="user">
                        <tr>
                            <td id="tamanhoDescricao"><c:out value="${consumidorList.nome}" /></td>
                        </tr>
                    </c:forEach>
                 </tbody>
             </table>
		
		<input type="button" class="button" value="Confirmar" id="botao" onClick="verificaCliente()"/>
		<input type="button" class="button" value="Voltar" id="botao" onClick="eventoVoltar()"/>
		<input type="button" class="button" value="Cancelar" id="botao" onClick="eventoCancelar()"/>
		
	</form>

</body>

</head>
