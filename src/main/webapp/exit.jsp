<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<%
    session.invalidate();
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setDateHeader("Expires", 0); // Proxies
%>
<html>
<head>
    <title>До встречи!</title>
</head>
<body>
<div class="container">
    <h1>Спасибо за участие 🌱</h1>
    <p>Ты завершил(а) наш тест. Надеемся, это было интересно!</p>
</div>
</body>
</html>
