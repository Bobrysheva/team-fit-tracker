<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<html>
<head>
    <title>2b</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
%>
<body>
<h4><%= username%>, представь что Тебя просят высказать мнение по важному командному решению. Ты:
</h4>

<img src="/pictures/freeToArgue.jpg" alt="2b Image">
<br>
<br>
<div class="button-container">
    <form action="4a.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Скажу честно, даже если не до конца уверен(а)
        </button>
    </form>

    <form action="3.jsp" method="get">
        <button type="submit" class="btn btn-option2">
            Лучше промолчу, чтобы не мешать опытным
        </button>
    </form>
</div>
<p>Пользователь: <%=username%></p>
<p>Попытка номер: <%=sessionNumber%></p>
</body>
</html>

