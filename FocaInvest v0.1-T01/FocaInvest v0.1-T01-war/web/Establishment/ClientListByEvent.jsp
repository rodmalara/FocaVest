<%-- 
    Document   : ClientListByEvent
    Created on : 01/06/2015, 09:20:01
    Author     : Matheus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ClientList By Event</h1>
        
        <div class="container">
            <c:forEach items="${requestScope.eventList}" var="event">
            <div class="row">
                
                <p>Evento ${event.nome}</p>
                <p>Descrição: ${event.descricao}</p>
                <c:forEach items="${event.listConsumidores}" var="consumidor">
                <form method="post" action="GivePointsServlet?consumidorId=${consumidor.consumidorID}">
                <div class="listUsers">
                    <p class="col-md-3">${consumidor.nome}</p>
                    <p class="col-md-3">${consumidor.email}</p>
                    <input type="submit" value="Confirmar check-in"> 
                </div>
                </form>
                </c:forEach>
            </div>
            </c:forEach>
        </div>
    </body>
</html>
