<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<%
    String username = (String) session.getAttribute("username");
    String clientIP = (String) session.getAttribute("clientIP");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
%>
<body>

<h2>Привет, <%= username %>!</h2>
<img src="pictures/welcome.jpg" alt="Welcome Image">
<br>
<h3> <%= username%>, выбери один из наиболее комфортных для тебя вариантов ответа</h3>
<h4>Только присоединившись к новой команде, ты видишь что обсуждение идёт открыто, каждый может влиять на решения. Тебя это:
</h4>
<div class="button-container">
    <form action="2a.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Воодушевляет — классно, что у всех есть голос
        </button>
    </form>

    <form action="2b.jsp" method="get">
        <button type="submit" class="btn btn-option2">
            Немного напрягает — кто-то должен быть главным
        </button>
    </form>
</div>
<p>Пользователь: <%=username%></p>
<p>Попытка номер: <%=sessionNumber%></p>
</body>
</html>
