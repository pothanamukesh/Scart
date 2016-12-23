<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring4 MVC</title>
</head>
<body>
<h1>Hello : ${name}</h1>
   
   <!--  if user logged in these liks are not display-->
   
   <c:if test="${ empty successMsg}">
   <a href="login">Login</a><br>
<a href="registration">Register</a>
   </c:if>

<hr>
${successMsg}
${errorMSG }


<c:if test="${showloginpage}">
<jsp:include page="login.jsp"></jsp:include>
</c:if>
<c:if test="${not empty errorMSG}">
<jsp:include page="login.jsp"></jsp:include>
</c:if>


<c:if test="${showregistionpage}">
<jsp:include page="registration.jsp"></jsp:include></c:if>

</body>
</html>