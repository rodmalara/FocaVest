<%-- 
    Document   : InsertEvent
    Created on : 11/05/2015, 00:42:36
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <title>EVENTO</title>
    <meta charset="UTF-8">
    <script src="http://code.jquery.com/jquery.js"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="../js/bootstrap.min.js"></script>
	
	
	
</head>
<body>
<form class="form-horizontal">
<fieldset>

 
<!-- Form Name -->
<legend>EVENTO</legend>

 
<!-- Campo código-->
<!--
<div class="control-group">

 <center><b><font size="5">EVENTO</font></b></center><br><br>

  <label class="control-label">Código</label>
    <div class="controls">
    <input id="codigo" name="codigo" type="text" class="input-small" required disabled>
</div>
</div>-->
<!-- Campo Nome do evento-->
<div class="control-group">
  <label class="control-label">Nome</label>
  <div class="controls">
    <input id="nome" name="nome" type="text" placeholder ="Nome do evento" class="input-xxlarge" required>
</div>
</div>
<div class="control-group">
  <label class="control-label">Descrição</label>
  <div class="controls">
    <textarea id="descricao" name="descricao" rows="5" class="input-xxlarge" required></textarea> 
</div>
</div>
<!--<div class="control-group">
  <label class="control-label" for="textarea">Descrição</label>
  <div class="controls">                     
    <textarea id="textarea" name="textarea" placeholder="Descrição do evento">
  </div>
</div>

<!-- Campo qtd pessoas-->
<div class="control-group">
  <label class="control-label">Lotação Máxima</label>
  <div class="controls">
    <input id="pessoas" name="pessoas" type="text" class="input-large" placeholder="Lotação Máxima" required>
</div>
</div>
</div>
<!-- Campo data-->
<div class="control-group">
  <label class="control-label">Data</label>
  <div class="controls">
    <input id="data" name="data" type="text" class="input-small" placeholder="00/00/0000" required>
</div>
</div>
<!-- Campo horário-->
<div class="control-group">
  <label class="control-label">Horário</label>
  <div class="controls">
    <input id="data" name="data" type="text" class="input-small" placeholder="00:00" required>
</div>
</div>
<!-- Campo preço-->
<div class="control-group">
  <label class="control-label" for="appendedtext">Preço</label>
  <div class="controls">
    <div class="input-append">
      <input id="appendedtext" name="appendedtext" class="input-xlarge" placeholder="Preço evento" type="text">
      <span class="add-on">R$</span>
    </div>
    </div>

</div>
</div>
<!--
<div class="control-group">
  <label class="control-label" for="selectbasic">Reservas</label>
  <div class="controls">
    <select id="selectbasic" name="selectbasic" placeholder="Reservas" class="input-xxlarge">
      <option>Item 1</option>
      <option>Item 2
	  </option>
    </select>
  </div>
</div>
<div class="control-group">
  <label class="control-label" for="selectbasic">Presentes</label>
  <div class="controls">
    <select id="selectbasic" name="selectbasic" placeholder="Presentes" class="input-xxlarge">
      <option>Item 1</option>
      <option>Item 2
	  </option>
    </select>
  </div>
</div>-->

<!-- Button -->
<div class="btn-group">
  <div class="controls">
  <button id="btnCadastrar" name="btnCadastrar" class="btn btn-success">Cadastrar</button>
  </div>
</div>
 
</fieldset>
</form>
 
</body>
</html>

