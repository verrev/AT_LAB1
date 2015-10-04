<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="header">
        <h1>Login</h1><br>
    </div>

    <div class="content">

        <form action="/" method="POST">
            Username<br>
            <input type="text" name="username"><br><br>
            Password<br>
            <input type="password" name="password"><br><br>
            <input type="submit" class="btn btn-success" value="Login">
        </form>
    </div>

    <div class="footer">
        <p>
            <br>
            Copyright (C) Vootele Verrev 2015 | www.github.com/verrev
    </div>

</div>
</body>
</html>