<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<html>
<head>
    <title>8a</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
%>
<body>
<h4>Если бы тебе дали свободу самостоятельно выбирать задачи в рамках команды, ты:
</h4>

<img src="pictures/independence.jpg" alt="8a Image">
<br>
<br>
<div class="button-container">
    <form action="discuss.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Предпочёл(ла) бы список задач от кого-то опытного
        </button>
    </form>

    <form action="9a.jsp" method="get">
        <button type="submit" class="btn btn-option2">
            Принял(а) бы это как доверие и проявил(а) инициативу
        </button>
    </form>
</div>
<p>Пользователь: <%=username%></p>
<p>Попытка номер: <%=sessionNumber%></p>
</body>
</html>
