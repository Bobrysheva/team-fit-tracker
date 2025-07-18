<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<%@page import="com.bobrysheva.teamfitchecker.model.Session"%>
<%@ page import="com.bobrysheva.teamfitchecker.model.SessionRepository" %>
<%@ page import="jakarta.servlet.ServletContext"%>
<%
    String username = (String) session.getAttribute("username");
    String clientIP = (String) session.getAttribute("clientIP");
    Session userSession = new Session(username, clientIP);
    userSession.startSession();
    ServletContext context = config.getServletContext();
    SessionRepository sessionRepository = (SessionRepository) context.getAttribute("sessionRepository");
    userSession.setAttemptNumber(sessionRepository.sessionCount(username)+1);
    sessionRepository.addNewSession(userSession);
    int sessionNumber = sessionRepository.sessionCount(username);
    session.setAttribute("sessionNumber", sessionNumber);
    session.setAttribute("sessionObject", userSession);
%>
<body>
<h2><%= username %>, каждый имеет право попробовать еще раз, дерзай смелее!</h2>
<img src="pictures/secondChance.jpg" alt="Welcome Image">
<br>
<h3> Выбери один из наиболее комфортных для тебя вариантов ответа</h3>
<h4>Только присоединившись к новой команде, ты видешь что обсуждение идёт открыто, каждый может влиять на решения. Тебя это:
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
