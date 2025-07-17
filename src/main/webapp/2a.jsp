<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<html>
<head>
    <title>2a</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
%>
<body>
<h4><%= username%>, представь что тебе предлагают поучаствовать в решении, которое напрямую не входит в твою зону ответственности. Ты:
</h4>
<img src="pictures/kompromiss.jpg" alt="2a Image">
<br>
<br>
<div class="button-container">
    <form action="4a.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Включаюсь — интересно быть в курсе и помочь
        </button>
    </form>

    <form action="3.jsp" method="get">
        <button type="submit" class="btn btn-option2">
            Предпочту не вмешиваться без прямой задачи
        </button>
    </form>
</div>
<p>Пользователь: <%=username%></p>
<p>Попытка номер: <%=sessionNumber%></p>
</body>
</html>
