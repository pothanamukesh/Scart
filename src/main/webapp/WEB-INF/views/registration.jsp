<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrtion Page</title>
</head>
<body>
 <h1 align="center" style="margin-top:60px;">Register Here</h1>
<div class="text-center myForm" style="margin-top:50px;width:200px;">
 <c:url var="action" value="adduser"></c:url>
<form:form action="${action }" modelAttribute="user">
<table>
<tr><td>Name:</td><td><form:input class="input1" path="username" /></td></tr>
<tr><td>Password:</td><td><form:input class="input1" path="password" type="password"/></td></tr>
<tr><td>E-mail:</td><td><form:input class="input1" path="email" /></td></tr>
<tr><td>Mobile:</td><td><form:input class="input1" path="mobile" /></td></tr>
<%-- <tr><td>Address:</td><td><form:input class="input1" path="address" /></td></tr> --%>
<tr><td></td><td><input type="submit" class="btn btn-primary" value="Register"/></td></tr>
</table>
</form:form>
</div>
${registered}
</body>
</html>