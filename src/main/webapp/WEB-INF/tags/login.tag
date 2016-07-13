<%@ tag description="Login Tag" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<div class="login-link-container">
    <form name='f' action='${pageContext.request.contextPath}/j_spring_security_check' method='POST'
          class="loginform">
        <table class="logintable">
            <tr style="height: 300px;"></tr>
            <tr>
                <td>User:</td>
                <td><input type='text' name='j_username' value='user@gmail.com' title="name"></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type='password' name='j_password' title="pass"/></td>
            </tr>
            <tr>
                <td><input type='checkbox' name='_spring_security_remember_me' title="remember"/></td>
                <td>Remember me on this computer.</td>
            </tr>
            <tr>
                <td colspan='2'><input name="submit" type="submit" value="Login" class="myButton"/></td>
            </tr>
        </table>
    </form>
    </div>
