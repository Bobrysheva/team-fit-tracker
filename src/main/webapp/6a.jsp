<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page info="Автор: Бобрышева Екатерина; версия : 1.0"%>
<%@ page errorPage="errorpage.jsp"%>
<html>
<head>
    <title>6a</title>
</head>
<%
    String username = (String) session.getAttribute("username");
    int sessionNumber = (int) session.getAttribute("sessionNumber");
%>
<body>
<h4>В команде принято делиться не только задачами, но и эмоциями. Например, говорить, если чувствуешь выгорание или переживаешь. Это:
</h4>

<img src="pictures/shareEmotions.jpg" alt="6a Image">
<br>
<br>
<div class="button-container">
    <form action="8a.jsp" method="get">
        <button type="submit" class="btn btn-option1">
            Окей — честность и поддержка важны
        </button>
    </form>

    <form action="7.jsp" method="get">
        <button type="submit" class="btn btn-option2">
            Не по мне — рабочее и личное лучше разделять
        </button>
    </form>
</div>
<p>Пользователь: <%=username%></p>
<p>Попытка номер: <%=sessionNumber%></p>
</body>
</html>
