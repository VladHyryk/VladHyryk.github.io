<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<t:template>
  <div class="armoraddform">
  <form:form method="post" action="addBodyArmor" commandName="bodyarmor">
    <table>
      <tr>
        <td><form:label path="name">
          Name
        </form:label></td>
        <td><form:input cssClass="name" path="name"/></td>
        <td><form:errors cssClass="error" path="name"></form:errors> </td>
      </tr>
      <tr>
        <td><form:label path="description">
          Description
        </form:label>
        </td>
        <td><form:textarea cssClass="description" path="description"/></td>
        <td><form:errors cssClass="error" path="description"></form:errors> </td>
      </tr>
      <tr>
      <tr>
        <td><form:label path="price">
          Price
        </form:label>
        </td>
        <td><form:input cssClass="price" path="price"/></td>
        <td><form:errors cssClass="error" path="price"></form:errors> </td>
      </tr>
      <tr>
      <tr>
        <td><form:label path="size">
          Size
        </form:label>
        </td>
        <td><form:input cssClass="size" path="size"/></td>
        <td><form:errors cssClass="error" path="size"></form:errors> </td>
      </tr>
      <tr>
        <td><form:label path="img">
          Image
        </form:label>
        </td>
        <td><form:input cssClass="addimage" path="img"/></td>
        <td><form:errors cssClass="error" path="img"></form:errors> </td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="Add Body Armor" class="mybutton"/>
          <a href="<c:url value="/"/>"><input type="button" value="Cancel" class="mybutton"/></a></td>
      </tr>
    </table>
  </form:form>
  </div>
</t:template>
