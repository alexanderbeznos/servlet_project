<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Players</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/logOut" method="get">
    <input type="submit" value="Log out">
</form>
<br/>
<br/>
<br/>
<br/>
<form action="${pageContext.request.contextPath}/addPlayer" method="get">
    <input type="submit" value="Add player">
</form>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Last Name</th>
        <th>Market Value</th>
        <th>Country</th>
        <th>Club</th>
    </tr>
    <c:if test="${requestScope.answer=='ok'}">
        <c:forEach items="${requestScope.players}" var="player">
            <tr>
                <td><c:out value="${player.name}"/></td>
                <td><c:out value="${player.lastName}"/></td>
                <td><c:out value="${player.marketValue}"/></td>
                <td><c:out value="${player.country}"/></td>
                <td><c:out value="${player.club}"/></td>
                <td>
                    <form action="${pageContext.request.contextPath}/updatePlayer" method="get">
                        <input type="submit" value="Update">
                        <input name="id" type="hidden" value="<c:out value="${player.id}"/>"/>
                        <input name="name" type="hidden" value="<c:out value="${player.name}"/>"/>
                        <input name="lastName" type="hidden" value="<c:out value="${player.lastName}"/>"/>
                        <input name="marketValue" type="hidden" value="<c:out value="${player.marketValue}"/>"/>
                        <input name="country" type="hidden" value="<c:out value="${player.country}"/>"/>
                        <input name="club" type="hidden" value="<c:out value="${player.club}"/>"/>
                    </form>
                </td>
                <td>
                    <form action="${pageContext.request.contextPath}/deletePlayer" method="get">
                        <input type="submit" value="Delete">
                        <input name="id" type="hidden" value="<c:out value="${player.id}"/>"/>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </c:if>
    <c:if test="${requestScope.answer!='ok'}">
        <tr>
            <td><c:out value="${requestScope.answer}"/></td>
        </tr>
    </c:if>
</table>
</body>
</html>
