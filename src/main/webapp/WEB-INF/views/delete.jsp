<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Player</title>
</head>
<body>
<br/>
<br/>
<form action="${pageContext.request.contextPath}/deletePlayer" method="post">
    <p>Delete player?</p>
    <input name="id" type="hidden" value="<c:out value="${param.id}"/>"/>
    <input type="submit" value="Yes">

</form>
<form action="${pageContext.request.contextPath}/list" method="get">
    <input type="submit" value="No">
</form>
</body>
</html>
