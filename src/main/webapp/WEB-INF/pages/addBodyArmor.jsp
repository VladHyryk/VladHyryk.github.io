<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
  <script src="<c:url value="/resources/s/ArmorUtils.js" />"></script>
    <title>Body armor add</title>
</head>
<body>
<form:form method="post" action="addBodyArmor" commandName="bodyarmor">
  <table>
    <tr>
      <td><form:label path="name">
        Name
      </form:label></td>
      <td><form:input path="name"/></td>
      <td><form:errors cssClass="error" path="name"></form:errors> </td>
    </tr>
    <tr>
      <td><form:label path="description">
        Description
      </form:label>
      </td>
      <td><form:textarea path="description"/></td>
      <td><form:errors cssClass="error" path="description"></form:errors> </td>
    </tr>
    <tr>
    <tr>
      <td><form:label path="price">
        Price
      </form:label>
      </td>
      <td><form:input path="price"/></td>
    <td><form:errors cssClass="error" path="price"></form:errors> </td>
    </tr>
    <tr>
    <tr>
      <td><form:label path="size">
        Size
      </form:label>
      </td>
      <td><form:input path="size"/></td>
    <td><form:errors cssClass="error" path="size"></form:errors> </td>
    </tr>
    <tr>
      <td><form:label path="img">
        Image
      </form:label>
      </td>
      <td><form:input path="img"/></td>
      <td><form:errors cssClass="error" path="img"></form:errors> </td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" value="Add Body Armor"/></td>
    </tr>
  </table>
</form:form>
</body>
</html>
