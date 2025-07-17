<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<html>
<head>
    <title>4a</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
%>
<body>
<h4><%= username%>, через месяц в команде становится больше самостоятельности: нет жёсткого контроля, но все сами несут ответственность. Как тебе это?
</h4>

<img src="pictures/freedom.jpg" alt="4a Image">
<br>
<br>
<div class="button-container">
    <form action="5.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Стрессово — нужен кто-то, кто будет рулить
        </button>
    </form>

    <form action="6a.jsp" method="get">
        <button type="submit" class="btn btn-option2">
            Это круто — люблю свободу и доверие
        </button>
    </form>
</div>
<p>Пользователь: <%=username%></p>
<p>Попытка номер: <%=sessionNumber%></p>
</body>
</html>
