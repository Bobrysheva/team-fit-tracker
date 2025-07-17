<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<%@ page import="com.bobrysheva.teamfitchecker.model.Session" %>
<html>
<head>
    <title>another</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
    Session sessionFinishing = (Session) session.getAttribute("sessionObject");
    sessionFinishing.endSessionFailed();
%>

<body>
<h3><%= username%>, </h3>
<h4>Благодарим тебя за интерес к нашей команде и за открытость в ответах. Мы очень ценим, когда люди честно делятся
    своим взглядом на работу и взаимодействие — это помогает понять, насколько мы подходим друг другу.</h4>
<h4>После знакомства и анализа твоих ответов мы пришли к выводу, что на данном этапе наши рабочие принципы и формат
    командного взаимодействия могут быть тебе не совсем комфортны.</h4>
<h4>У нас много свободы, самоорганизации и совместного принятия решений. Это требует высокой вовлечённости, инициативы и
    готовности быть не только исполнителем, но и соавтором процессов. Мы видим, что тебе, возможно, ближе другой стиль
    работы — и это абсолютно нормально.</h4>
<h4> В любом случае мы благодарим тебя за интерес, уделённое время и честность.</h4>
<h4>Желаем найти ту команду и среду, где тебе будет действительно комфортно и вдохновляюще!</h4>
<br>

<img src="pictures/leave.jpg" alt="Another Image">

<br>
<div class="button-container">
    <form action="tryAgain.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Попробовать снова
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
