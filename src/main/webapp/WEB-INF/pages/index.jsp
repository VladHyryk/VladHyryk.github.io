<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/s/ArmorUtils.js" />"></script>
     <title>Stone Forge</title>
</head>
<body>
</div>
<div class="maincontext">
        <div class="login-link-container">
        <sec:authorize access="isAnonymous()">
            <p>
                <a href="/spring_security_login">Sign In</a>
            </p>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <a href="/j_spring_security_logout">Sign Out</a>
        </sec:authorize>
    </div>
    <c:if test="${!empty bodyarmors}">
        <table class="armor-list-table">
            <tr>
                <th>&nbsp;</th>
                <th>Name</th>
                <th>Description</th>
                <th>Prise</th>
                <th>Size</th>
                <sec:authorize access="hasRole('admin')">
                    <th>&nbsp;</th>
                </sec:authorize>
            </tr>
            <c:forEach items="${bodyarmors}" var="bodyarmor">
                <tr>
                    <%--</td>http://localhost:8080/resources/images/slides/arms1.jpg--%>
                    <td><img src="${bodyarmor.img}">
                    <td>${bodyarmor.name}</td>
                    <td>${bodyarmor.description}</td>
                    <td>${bodyarmor.price}</td>
                    <td>${bodyarmor.size}</td>
                    <sec:authorize access="hasRole('admin')">
                        <%--<td><a href="deleteBodyArmor/${bodyarmor.id}">Delete</a></td>--%>
                        <td><a href="javascript:ArmorUtils.deleteBodyArmor(${bodyarmor.id})">Delete</a></td>
                    </sec:authorize>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <sec:authorize access="isAuthenticated()">
        <a href="addBodyArmor">Add Body Armor</a>
    </sec:authorize>
</div>
</body>
</html>