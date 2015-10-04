<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>
<div class="container">

    <div class="header">
    </div>

    <div class="content">
        <form action="/main" method="POST">
            Message<br>
            <input type="text" name="message"><br>
            <input type="submit" value="Add message">
        </form>

        <c:forEach items="${messages}" var="m">
            <p>${m}</p>
        </c:forEach>

    </div>

    <div class="footer">
        <p>
            <br>
            Copyright (C) Vootele Verrev 2015 | www.github.com/verrev
    </div>

</div>
</body>
</html>