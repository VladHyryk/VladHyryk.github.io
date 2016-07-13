<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<t:template>
  <div class="orderaddform">
    <form:form method="post" action="addOrder" commandName="order">
      <table>
        <tr>
          <td><form:label path="necksize">
            Neck Size
          </form:label></td>
          <td><form:input cssClass="necksize" path="necksize"/></td>
          <td><form:errors cssClass="error" path="necksize"></form:errors> </td>
        </tr>
        <tr>
          <td><form:label path="chestsize">
            Chest Size
          </form:label></td>
          <td><form:input cssClass="chestsize" path="chestsize"/></td>
          <td><form:errors cssClass="error" path="chestsize"></form:errors> </td>
        </tr>
        <tr>
          <td><form:label path="stomachmeasurement">
            Stomach Measurement
          </form:label></td>
          <td><form:input cssClass="stomachmeasurement" path="stomachmeasurement"/></td>
          <td><form:errors cssClass="error" path="stomachmeasurement"></form:errors> </td>
        </tr>
        <tr>
          <td><form:label path="waistsize">
            Waist Size
          </form:label></td>
          <td><form:input cssClass="waistsize" path="waistsize"/></td>
          <td><form:errors cssClass="error" path="waistsize"></form:errors> </td>
        </tr>
        <tr>
          <td><form:label path="necktowaist">
            Neck-to-Waist
          </form:label></td>
          <td><form:input cssClass="necktowaist" path="necktowaist"/></td>
          <td><form:errors cssClass="error" path="necktowaist"></form:errors> </td>
        </tr>
        <tr>
          <td><form:label path="sleevemeasurement">
            Sleeve Measurement
          </form:label></td>
          <td><form:input cssClass="sleevemeasurement" path="sleevemeasurement"/></td>
          <td><form:errors cssClass="error" path="sleevemeasurement"></form:errors> </td>
        </tr>
        <tr>
          <td><form:label path="risemeasurement">
            Rise Measurement
          </form:label></td>
          <td><form:input cssClass="risemeasurement" path="risemeasurement"/></td>
          <td><form:errors cssClass="error" path="risemeasurement"></form:errors> </td>
        </tr>
        <tr>
          <td><form:label path="inseamlength">
            Inseam Length
          </form:label></td>
          <td><form:input cssClass="inseamlength" path="inseamlength"/></td>
          <td><form:errors cssClass="error" path="inseamlength"></form:errors> </td>
        </tr>
        <tr>
          <td><form:label path="thighsize">
            Thigh Size
          </form:label></td>
          <td><form:input cssClass="thighsize" path="thighsize"/></td>
          <td><form:errors cssClass="error" path="thighsize"></form:errors> </td>
        </tr>
        <tr>
          <td><form:label path="calfsize">
            Calf Size
          </form:label></td>
          <td><form:input cssClass="calfsize" path="calfsize"/></td>
          <td><form:errors cssClass="error" path="calfsize"></form:errors> </td>
        </tr>
        <tr>
          <td><form:label path="orderimg">
            Image
          </form:label></td>
          <td><form:input cssClass="orderimg" path="orderimg"/></td>
          <td><form:errors cssClass="error" path="orderimg"></form:errors> </td>
        </tr>
        <tr>
          <td colspan="2"><input type="submit" value="addOrder" class="mybutton"/>
            <a href="<c:url value="/"/>"><input type="button" value="Cancel" class="mybutton"/></a></td>
        </tr>
      </table>
    </form:form>
  </div>
</t:template>
