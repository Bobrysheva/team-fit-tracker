<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<html>
<head>
    <title>7</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
%>
<body>
<h4><%= username%>, тебя приглашают на командный круг, где можно открыто говорить о том, что волнует. Ты:
</h4>

<img src="/pictures/openShering.jpg" alt="7 Image">
<br>
<br>
<div class="button-container">
    <form action="8a.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Готов(а) участвовать, даже если непривычно
        </button>
    </form>

    <form action="another.jsp" method="get">
        <button type="submit" class="btn btn-option2">
            Не вижу в этом смысла, лишняя психология
        </button>
    </form>
</div>
<p>Пользователь: <%=username%></p>
<p>Попытка номер: <%=sessionNumber%></p>
</body>
</html>