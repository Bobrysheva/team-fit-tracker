<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<html>
<head>
    <title>3</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
%>
<body>
<h4><%= username%>, представь что вдруг ты замечаешь, что что-то пошло не так в проекте, но тебя это напрямую не касается. Как действуешь?
</h4>

<img src="pictures/problem.jpg" alt="3 Image">
<br>
<br>
<div class="button-container">
    <form action="4a.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Сообщаю команде или предлагаю помощь
        </button>
    </form>

    <form action="another.jsp" method="get">
        <button type="submit" class="btn btn-option2">
            Не лезу — пусть разбираются те, кто отвечает
        </button>
    </form>
</div>
<p>Пользователь: <%=username%></p>
<p>Попытка номер: <%=sessionNumber%></p>
</body>
</html>
