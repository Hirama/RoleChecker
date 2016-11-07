<%--
  Created by IntelliJ IDEA.
  User: Andrey
  Date: 07.11.2016
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title Login Page</title>
</head>
<body>
<h1>Login page</h1>
<p>Valid users:
<p>username: <b>user</b>, password: <b>user</b></p>
<p>username: <b>admin</b>, password: <b>admin</b></p>

<c:if test="${not empty param.login_error}">
  <span style="color: red; ">
    Your login attempt was not successful, try again.<br/><br/>
    Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
  </span>
</c:if>

<form name="frm" action="<c:url value='login.jsp'/>" method="post">
    <table>
        <tr> <td>User:</td> <td><input type="text" name="username"></td></tr>

        <tr><td>Password:</td> <td><input type="password" name="password"></td></tr>

        <tr><td colspan="2"><input name="submit" type="submit"></td></tr>
    </table>

    <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>"
           value="<c:out value="${_csrf.token}"/>"/>
</form>

</body>

</html>