<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<html>
<head>
    <title>9a</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
%>
<body>
<h4><%=username %>, какой фидбэк тебе был бы ценнее от команды?
</h4>
<img src="pictures/openShering.jpg" alt="9a Image">
<br>
<br>
<div class="button-container">
    <form action="discuss_victory.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Ты хорошо справляешься с задачами, почти без ошибок
        </button>
    </form>

    <form action="victory.jsp" method="get">
        <button type="submit" class="btn btn-option2">
            С тобой приятно работать — ты поддерживаешь и вовлекаешь
        </button>
    </form>
</div>
<p>Пользователь: <%=username%></p>
<p>Попытка номер: <%=sessionNumber%></p>
</body>
</html>
