<%-- 
    Document   : UpdateEstablishment
    Created on : 11/05/2015, 01:06:26
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>ESTABELECIMENTO</title>
    <meta charset="UTF-8">
    <script src="http://code.jquery.com/jquery.js"></script>
    <link href="../css/bootstrap.css" rel="stylesheet" media="screen">
    <script src="../js/bootstrap.min.js"></script>
	
	
</head>
<body>
<form class="form-horizontal">
<fieldset>

 
<!-- Form Name -->
<legend><b><align=center>ESTABELECIMENTO</b></legend>

 
<!-- Campo Nome proprietário-->
<!--<div class="control-group">
 <center><b><font size="5">ESTABELECIMENTO</font></b></center><br><br>
  <label class="control-label">Proprietário</label>
  <div class="controls">
    <input id="proprietario" name="proprietário" type="text" placeholder ="Nome proprietário do bar"class="input-xxlarge">
</div>
</div>-->
<!-- Campo e-mail-->
<div class="control-group">
  <label class="control-label">Estabelecimento</label>
  <div class="controls">
    <input id="estabelecimento" name="estabelecimento" type="text" class="input-xxlarge" placeholder="Nome estabelecimento">
</div>
</div>
</div>
<!-- Campo usuário-->
<!--<div class="control-group">
  <label class="control-label">Usuário</label>
  <div class="controls">
    <input id="usuario" name="usuario" type="text" class="input-xlarge" placeholder="Usuário para login">
</div>
</div>-->
<!-- Campo e-mail-->
<div class="control-group">
  <label class="control-label" for="appendedtext">E-mail</label>
  <div class="controls">
    <div class="input-append">
      <input id="appendedtext" name="appendedtext" class="input-xlarge" placeholder="E-mail" type="text">
      <span class="add-on">@</span>
    </div>
    </div>
</div>
<!-- Campo senha-->
<div class="control-group">
  <label class="control-label">Senha</label>
  <div class="controls">
    <input id="senha" name="senha" type="password" class="input-xlarge" placeholder="Senha para login">
</div>
</div>
<!-- Campo telefone-->
<div class="control-group">
  <label class="control-label">Telefone</label>
  <div class="controls">
    <input id="telefone" name="telefone" type="text" class="input-medium" placeholder="(00) 0000-0000">
</div>
</div>
<!-- Campo CNPJ-->
<div class="control-group">
  <label class="control-label">CNPJ</label>
  <div class="controls">
    <input id="cnpj" name="cnpj" type="text" placeholder="000-000-000-00" class="input-medium">
</div>
</div>
<!-- Campo role-->
<!--<div class="control-group">
  <label class="control-label">Role</label>
  <div class="controls">
    <input id="role" name="role" type="text" class="input-xxlarge" placeholder="Função">
</div>
</div>-->
<!--<div class="control-group">
  <label class="control-label" for="selectbasic">Eventos</label>
  <div class="controls">
    <select id="selectbasic" name="selectbasic" placeholder="Lista de eventos" class="input-xxlarge">
      <option>Item 1</option>
      <option>Item 2
	  </option>
    </select>
  </div>
</div>
-->
<!-- Button -->
<div class="control-group">
  <div class="controls">
  <!--<button id="btnCadastrar" name="btnCadastrar" class="btn btn-success">Cadastrar</button>-->
	<button id="btnCadastrar" name="btnCadastrar" class="btn btn-success">Alterar</button>
	<!--<button id="btnCadastrar" name="btnCadastrar" class="btn btn-success">Pesquisar</button>-->
	<!-- <button id="btnCadastrar" name="btnCadastrar" class="btn btn-success">Deletar</button>-->
  </div>
</div>
 
</fieldset>
</form>
 
</body>
</html>

