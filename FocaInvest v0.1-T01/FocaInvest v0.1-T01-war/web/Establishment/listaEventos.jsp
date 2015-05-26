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
	<form id="formulario" style="display:block;">
		<h1 id="h1_texto">Lista de eventos</h1>
		<table bgcolor="#00FF00"><!--acredito que aqui vai um loop para criar as linhas da tabela conforme o número de eventos que vão sendo cadastrados-->
		
                 <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Descrição</th>
                    </tr>
                 </thead>
                 <tbody>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td><c:out value="${user.nome}" /></td>
                            <td><c:out value="${user.descricao}" /></td>
                        </tr>
                    </c:forEach>
                 </tbody>
                    
                    
		<tr id="Tabela"> <!--linha-->
			<td>
			<input type="button" class="button" value="Editar" id="botao" onclick="abrirFormEvento()"/>
			<input type="button" class="button" value="Ver clientes" id="botao" onclick="abrirListaClientes()"/>
			<input type="button" class="button" value="Excluir" id="botao"/>
						</td>
		<tr id="Tabela">
			<td>
			
			
			</td>
		
		</table>
	
		</form>
		
</body>

</head>