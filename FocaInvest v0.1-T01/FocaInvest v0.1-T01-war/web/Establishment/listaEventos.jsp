<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>

		<script type="text/javascript">
		
			function abrirFormEvento(){
				
				location.href = "editarEvento.html";
			}
			
			function abrirListaClientes(){
				
				location.href = "listaClientes.html";
			}
			
			function exibirFormulario() {
				document.getElementById("formulario").style.display = "block";
			}
		
		</script>
		


<style type="text/css">

body{ font:100% normal Arial, Helvetica, sans-serif; background:#000000;}

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
				height: 50px;
		
		}
		

	#h1_texto { 
		color:#32CD32; 
		font-size:18px; 
		text-transform:uppercase; 
		padding:10px 0 10px 10px; 
		border-bottom:1px solid #696969; 
		border-top:1px solid #696969; 
		}
		
		
	#headTable{
	
		background-color: #2E2E2E;
		color: #FFFFFF;
		border-bottom: 2px solid #32CD32;
		border-top: 2px solid #32CD32;
		
	
	
	}
	
	#tamanhoDescricao{
	
		height: 1%;
		width: 50%;
	
	
	}
	


		

	#txtEvento{
		width: 350px;
		border-top:2px solid #32CD32; 
		border-bottom:2px solid #32CD32;
		border-right:2px solid #32CD32;
		border-left:2px solid #32CD32;
		padding:10px 10px 10px 10px; 
		color:#BDBDBD;
		background:#2E2E2E;
	
	}
	
	
				
		#botao1{
		background-image: url(editar.png); 
		background-color: transparent; 
		background-repeat: no-repeat;  
		background-position: 0px 0px;  
		border: none;         
		cursor: pointer;        
		height: 25px;  
		width: 25px;
		padding-left: 16px;     
		vertical-align: middle;
		}
		
		#botao2{
		background-image: url(cliente.png); 
		background-color: transparent; 
		background-repeat: no-repeat;  
		background-position: 0px 0px;  
		border: none;          
		cursor: pointer;       
		height: 25px;  
		width: 25px;
		padding-left: 16px;    
		vertical-align: middle;
		}
		
		#botao3{
		background-image: url(excluir.png); 
		background-color: transparent; 
		background-repeat: no-repeat;  
		background-position: 0px 0px;  
		border: none;          
		cursor: pointer;       
		height: 25px;  
		width: 25px;
		padding-left: 16px;    
		vertical-align: middle;
		}




</style>

<body>
	<form id="formulario" style="display:block;">
		<h1 id="h1_texto">Lista de eventos</h1>
		<table bgcolor="#00FF00"><!--acredito que aqui vai um loop para criar as linhas da tabela conforme o número de eventos que vão sendo cadastrados-->
		
                 <table id="headTable">
                 <tbody>
				 <tr>
					<td>Nome</td>
					<td>Descrição</td>
					<td>Editar</td>
					<td>Clientes</td>
					<td>Excluir</td>
				 
				 </tr>
        
                 <tbody>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td id="tamanhoDescricao"><c:out value="${user.nome}" /></td>
                            <td id="tamanhoDescricao"><c:out value="${user.descricao}" /></td>
							<td> <input type="button" class="button" id="botao1" onclick="abrirFormEvento()"/></td>
							<td> <input type="button" class="button" id="botao2" onclick="abrirListaClientes()"/></td>
							<td> <input type="button" class="button" id="botao3" href="EventoController?action=delete&userId=<c:out value="${user.eventoID}"/>"/> </td>
                                                        <td><a href="EventoController?action=delete&userId=<c:out value="${user.eventoID}"/>">Delete</a></td>
                        </tr>
                    </c:forEach>
                 </tbody>
             </table>
	
		</form>
		
</body>

</head>