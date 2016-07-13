<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:template>
    <div class="maincontext">
    <sec:authorize access="isAnonymous()">
        <t:login></t:login>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        </div>
        <%--@elvariable id="bodyarmors" type="java"--%>
        <c:if test="${!empty bodyarmors}">
            <table class="armor-list-table">
                <tr>
                    <th>&nbsp;</th>
                    <th class="name">Name</th>
                    <th class="description">Description</th>
                    <th class="price">Price</th>
                    <th class="size">Size</th>
                    <sec:authorize access="hasRole('admin')">
                        <th>&nbsp;</th>
                    </sec:authorize>
                    <th>&nbsp;</th>
                </tr>
                    <%--@elvariable id="bodyarmors" type="java.util.List"--%>
                <c:forEach items="${bodyarmors}" var="bodyarmor">
                    <tr>
                        <td><img src="${bodyarmor.img}">
                        <td>${bodyarmor.name}</td>
                        <td>${bodyarmor.description}</td>
                        <td>${bodyarmor.price}</td>
                        <td>${bodyarmor.size}</td>
                        <sec:authorize access="hasRole('admin')">
                            <td><a href="javascript:ArmorUtils.deleteBodyArmor(${bodyarmor.id})">
                                <button type="button" class="myButton">Delete</button>
                            </a></td>
                        </sec:authorize>
                        <sec:authorize access="hasRole('user')">
                        <td><a href="addOrder">
                            <button type="button" class="myButton">Order</button>
                        </a></td>
                        </sec:authorize>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <div class="login-link-container">
        <a href="${pageContext.request.contextPath}/j_spring_security_logout">
            <button type="button" class="myButton">Sign Out</button>
        </a>
        <sec:authorize access="hasRole('admin')">
            <a href="addBodyArmor">
                <button type="button" class="myButton">Add Body Armor</button>
            </a>
            <a href="orders">
                <button type="button" class="myButton">Order List</button>
            </a>
        </sec:authorize>
    </sec:authorize>
    </div>
    <%--Links for social networks--%>
    <div class="cell">
        <div class="share-wrapper below">
            <div class="rc50 share-action icon-share"></div>
            <div class="share-container rc50">
                <a class="share-btn tl icon-google-plus" href='#'></a>
                <a class="share-btn tr icon-twitter" href='#'></a>
                <a class="share-btn br icon-facebook" href='#'></a>
                <a class="share-btn bl icon-pinterest" href='#'></a>
            </div>
        </div>
    </div>
</t:template>