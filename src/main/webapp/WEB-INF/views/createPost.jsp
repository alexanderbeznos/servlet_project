<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add player</title>
</head>
<body>
<c:out value="${requestScope.answer}"/><br/>
<form action="${pageContext.request.contextPath}/list" method="get">
    <input type="submit" value="Return to players">
</form>
</body>
</html>
