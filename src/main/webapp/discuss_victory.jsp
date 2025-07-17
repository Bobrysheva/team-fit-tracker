<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<%@ page import="com.bobrysheva.teamfitchecker.model.SessionRepository" %>
<html>
<head>
    <title>discuss_victory</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");

    SessionRepository sessionRepository = (SessionRepository) session.getAttribute("sessionRepository");
    sessionRepository.getSessions(username).get(sessionNumber-1).endSessionPassed();
%>
<body>
<h3>Пройдено! Ура! 🎉</h3>
<h3><%= username%>, nы прошёл(а) тест — и это не просто чекбокс ✅</h3>
<h3>Ты проявил(а) себя, подумал(а) честно, и это уже говорит о многом.</h3>
<h4>💡 Ты не просто двигаешь задачи — ты двигаешь себя.</h4>
<p>И, возможно, готов(а) стать не только исполнителем, но и соавтором. Вовлекаться. Видеть, где важнее. Брать, предлагать, влиять.</p>
<p>Да, у нас не всегда будут “готовые задачи”.
    Но будет команда, где много доверия, свободы и смысла.
    Если это тебя вдохновляет — то, возможно, мы действительно подходим друг другу 🤝</p>
<img src="pictures/victory_2.jpg" alt="Victory_2 Image">
<h3> 🎯 Хорошо выполнять задачи — это база. А шаг вперёд — это рост.</h3>
<p>🔄 Хочешь — можешь пройти тест снова, просто ради интереса.</p>

<div class="button-container">
    <form action="tryAgain.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Хочу пробовать снова
        </button>
    </form>
    <form action="exit.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Выход
        </button>
    </form>
</div>
<p>Пользователь: <%=username%></p>
<p>Попытка номер: <%=sessionNumber%></p>
</body>
</html>
