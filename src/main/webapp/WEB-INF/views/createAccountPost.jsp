
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create account</title>
</head>
<br/>
<br/>
<br/>
<body>
<form action="${pageContext.request.contextPath}/createAccount" method="post">
    <label>Login:</label>
    <input type="text" name="login">
    <br>
    <br>
    <label>Password:</label>
    <input type="password" name="password">
    <br>
    <input type="submit" value="Create account">
</form>
</body>
</html>
