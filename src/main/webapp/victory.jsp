<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<%@ page import="com.bobrysheva.teamfitchecker.model.Session" %>
<html>
<head>
    <title>victory</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
    Session sessionFinishing = (Session) session.getAttribute("sessionObject");
    sessionFinishing.endSessionPassed();
%>
<body>
<h3>🌱 Ты — как будто уже с нами 🎉</h3>
<h3><%= username%>, мы пересмотрели твои ответы — и ощущение такое, будто ты уже часть нашей команды.</h3>
<p>Ты думаешь похоже, чувствуешь важно то же, что и мы:
    — свобода без хаоса,
    — ответственность без контроля,
    — работа не ради задач, а ради смысла.</p>
<h3>💡 Ты не просто выполняешь, ты вовлекаешь,</h3>
<p>Не ждёшь указаний — видишь, где можешь быть полезен(а).
    Не пугает отсутствие контроля — наоборот, вдохновляет возможность влиять.</p>
<img src="pictures/victory_1.jpg" alt="Victory_1 Image">
<h3> ✅ Результат: 100% совпадение по духу и ценностям 💚</h3>
<p>(и это очень откликается команде)</p>

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
