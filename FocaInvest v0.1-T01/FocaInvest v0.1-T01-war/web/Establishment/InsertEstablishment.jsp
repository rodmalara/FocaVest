<%-- 
    Document   : addEstabelecimento
    Created on : 27/04/2015, 21:00:09
    Author     : Matheus
--%>

<%@page import="java.lang.String"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>ESTABELECIMENTO</title>
    <meta charset="UTF-8">
    <script src="http://code.jquery.com/jquery.js"></script>
    <link href="cssrel="stylesheet" media="screen">
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form class="form-horizontal" method="post" action="InsertEstabelecimentoServlet" >
<fieldset>
 
<!-- Form Name -->
<legend>ESTABELECIMENTO</legend>
 
<!-- Campo código-->
<div class="control-group">
  <label class="control-label">Código</label>
    <div class="controls">
    <input id="codigo" name="codigo" type="text" class="input-small" required disabled>
</div>
</div>
<!-- Campo Nome proprietário-->
<!--<div class="control-group">
  <label class="control-label">Proprietário</label>
  <div class="controls">
    <input id="proprietario" name="proprietário" type="text" placeholder ="Nome proprietário do bar"class="input-xxlarge" required>
</div>
</div>
-->
<!-- Campo e-mail-->
<div class="control-group">
  <label class="control-label">Estabelecimento</label>
  <div class="controls">
    <input id="estabelecimento" name="estabelecimento" type="text" class="input-xxlarge" placeholder="Nome estabelecimento" required>
</div>
</div>
</div>
<!-- Campo usuário-->
<!--<div class="control-group">
  <label class="control-label">Usuário</label>
  <div class="controls">
    <input id="usuario" name="usuario" type="text" class="input-xlarge" placeholder="Usuário para login" required>
</div>
</div> -->
<!-- Campo senha-->
<div class="control-group">
  <label class="control-label">Senha</label>
  <div class="controls">
    <input id="senha" name="senha" type="password" class="input-xlarge" placeholder="Senha para login" required>
</div>
</div>
<!-- Campo e-mail-->
<div class="control-group">
  <label class="control-label" for="appendedtext">E-mail</label>
  <div class="controls">
    <div class="input-append">
      <input id="email" name="email" class="input-xlarge" placeholder="E-mail" type="text">
      <!--<span class="add-on">@</span>-->
    </div>
    </div>
</div>
<!-- Campo telefone-->
<div class="control-group">
  <label class="control-label">Telefone</label>
  <div class="controls">
    <input id="telefone" name="telefone" type="text" class="input-medium" placeholder="(00) 0000-0000" required>
</div>
</div>
<!-- Campo CNPJ-->
<div class="control-group">
  <label class="control-label">CNPJ</label>
  <div class="controls">
    <input id="cnpj" name="cnpj" type="text" placeholder="000-000-000-00" class="input-medium" required>
</div>
</div>
<!-- Campo role-->
<!--<div class="control-group">
  <label class="control-label">Role</label>
  <div class="controls">
    <input id="role" name="role" type="text" class="input-xxlarge" placeholder="Função" required>
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
</div>-->

<!-- Button -->
<div class="control-group">
  <div class="controls">
        <!--<button id="btnCadastrar" name="btnCadastrar" class="btn btn-success" value="">Cadastrar</button>-->
	<button id="btnCadastrar" name="btnCadastrar" class="btn btn-success">Alterar</button>
	<button id="btnCadastrar" name="btnCadastrar" class="btn btn-success">Pesquisar</button>
	<button id="btnCadastrar" name="btnCadastrar" class="btn btn-success">   <input id="btnBuscar" name="btnBuscar"  class="btn-success" type="submit" value="btnBuscar"/>
        <input id="btnCadastrar" name="btnCadastrar"  class="btn-success" type="submit" value="btnCadastrar"/>
  </div>
</div>
 
</fieldset>
</form>
 
</body>
</html>

