<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<t:template>
 <table>
  <%--@elvariable id="orders" type=""--%>
  <c:if test="${!empty orders}">
   <table class="order-list-table">
    <tr>
     <th class="necksize">Neck Size</th>
     <th class="chestsize">Chest Size</th>
     <th class="stomachmeasurement">Stomach Measurement</th>
     <th class="waistsize">Waist Size</th>
     <th class="necktowaist">Neck-to-Waist</th>
     <th class="sleevemeasurement">Sleeve Measurement</th>
     <th class="risemeasurement">Rise Measurement</th>
     <th class="inseamlength">Inseam Length</th>
     <th class="thighsize">Thigh Size</th>
     <th class="calfsize">Calf Size</th>
     <th class="orderimg">&nbsp;</th>
    </tr>
    <%--@elvariable id="orders" type="java.util.List"--%>
    <c:forEach items="${orders}" var="order">
     <tr>
      <td>${order.necksize}</td>
      <td>${order.chestsize}</td>
      <td>${order.stomachmeasurement}</td>
      <td>${order.waistsize}</td>
      <td>${order.necktowaist}</td>
      <td>${order.sleevemeasurement}</td>
      <td>${order.risemeasurement}</td>
      <td>${order.inseamlength}</td>
      <td>${order.thighsize}</td>
      <td>${order.calfsize}</td>
      <td><img src="${order.orderimg}">
      <sec:authorize access="hasRole('admin')">
       <%--<td><a href="javascript:OrderUtils.deleteOrder(${order.id})">--%>
       <td><a href="deleteOrder/${order.id}">
        <button type="button" class="myButton">Delete</button>
       </a></td>
      </sec:authorize>
     </tr>
    </c:forEach>
   </table>
  </c:if>
 </table>
  <div class="login-link-container">
  <a href="${pageContext.request.contextPath}/j_spring_security_logout">
   <button type="button" class="myButton">Sign Out</button>
  </a>
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