<%-- 
    Document   : barList
    Created on : 01/05/2015, 19:22:11
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${requestScope.barList}" var="bar">
           <div>
               <c:out value="${bar.estabelecimentoID}"></c:out>
           </div>   
        </c:forEach>
        
        <c:forEach items="${requestScope.eventMap}" var="map">
            <c:forEach items="${map.value}" var="event">
                <div>
                    <a href="InviteFriendsServlet?event_id=${event.eventoID}">${event.nome}</a>
                </div>
            </c:forEach>
        </c:forEach>
                
        <script type="text/javascript">
        function toggle_visibility(id) {
            var e = document.getElementById(id);
            if(e.style.display == 'block')
              e.style.display = 'none';
            else
              e.style.display = 'block';
        }
        </script>
    </body>
</html>
