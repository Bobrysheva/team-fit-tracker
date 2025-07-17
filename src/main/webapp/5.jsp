<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<html>
<head>
    <title>5</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
%>
<body>
<h4><%= username%>, команда хочет принимать решения консенсусом, без формального руководителя. Ты:
</h4>

<img src="pictures/kommand.jpg" alt="5 Image">
<br>
<br>
<div class="button-container">
    <form action="another.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Считаю, что всегда должен быть главный
        </button>
    </form>

    <form action="6a.jsp" method="get">
        <button type="submit" class="btn btn-option2">
            Поддержу — мне близок этот подход
        </button>
    </form>
</div>
<p>Пользователь: <%=username%></p>
<p>Попытка номер: <%=sessionNumber%></p>
</body>
</html>