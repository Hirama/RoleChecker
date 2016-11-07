<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Andrey
  Date: 07.11.2016
  Time: 9:07
  To change this template use File | Settings | File Templates.
--%>
<html>
<head><title>Index page</title></head>

<body>
<p>This is Admin page.
<p>without login you can't see it

<form action="<c:url value="/logout"/>" method="post">
    <input type="submit" value="Logoff"/> (also clears any remember-me cookie)
    <security:csrfInput/>
</form>

</body>
</html>