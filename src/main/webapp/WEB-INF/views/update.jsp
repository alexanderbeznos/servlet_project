<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update player</title>
</head>
<body>
<br/>
<br/>
<form action="${pageContext.request.contextPath}/updatePlayer" method="post">
    <input name="id" type="hidden" value="<c:out value="${param.id}"/>"/>
    <label>name</label>
    <input type="text" name="name" value="<c:out value="${param.name}"/>"><br/>
    <label>lastName</label>
    <input type="text" name="lastName" value="<c:out value="${param.lastName}"/>"><br/>
    <label>marketValue</label>
    <input type="text" name="marketValue" value="<c:out value="${param.marketValue}"/>"><br/>
    <label>country</label>
    <input type="text" name="country" value="<c:out value="${param.country}"/>"><br/>
    <label>club</label>
    <input type="text" name="club" value="<c:out value="${param.club}"/>"><br/>
    <input type="submit" value="Update player">
</form>
</body>
</html>
