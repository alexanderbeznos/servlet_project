<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<br/>
<form action="${pageContext.request.contextPath}/login" method="post">
    <label>Login:</label>
    <input type="text" name="login">
    <br>
    <br>
    <label>Password:</label>
    <input type="password" name="password">
    <br>
    <input type="submit" value="Log in">
</form>
<br/>
<form action="${pageContext.request.contextPath}/createAccount" method="get">
    <input type="submit" value="Create account">
</form>
</body>
</html>
