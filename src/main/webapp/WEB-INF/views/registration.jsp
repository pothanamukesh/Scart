<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrtion Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/Login.css"/>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="<c:url value="/resources/js/Login.js" />"></script>
<style type="text/css">
.form-control {
  border-radius: 0px;
  margin-top: 10px !important;
}</style>



</head>
<body>
 <h1 align="center" style="margin-top:60px;">Register Here</h1>
 
 <div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" align="center">
<%-- <div class="text-center myForm" style="margin-top:50px;width:200px;">
 <c:url var="action" value="adduser"></c:url>
<form:form action="${action }" modelAttribute="user">
<table>
<tr><td>Name:</td><td><form:input class="input1" path="username" /></td></tr>
<tr><td>Password:</td><td><form:input class="input1" path="password" type="password"/></td></tr>
<tr><td>E-mail:</td><td><form:input class="input1" path="email" /></td></tr>
<tr><td>Mobile:</td><td><form:input class="input1" path="mobile" /></td></tr>
<tr><td>Address:</td><td><form:input class="input1" path="address" /></td></tr>
<tr><td></td><td><input type="submit" class="btn btn-primary" value="Register"/></td></tr>
</table>
</form:form>
</div> --%>
   <!-- Begin | Register Form -->
        <c:url var="action" value="adduser"></c:url>
             <form:form action="${action }" modelAttribute="user" id="register-form">
                               		    <div class="modal-body">
		    				<div id="div-register-msg">
                                <div id="icon-register-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-register-msg">Register an account.</span>
                            </div>
		    				<form:input id="register_username" class="form-control"  path="username" placeholder="Username (type ERROR for error effect)" required="required"/>
		    				 <form:input id="register_password" class="form-control"  path="password" placeholder="Password" required="required"/>
		    				
                            <form:input id="register_email" class="form-control" path="email" placeholder="E-Mail" required="required"/>
                            <form:input id="register_email" class="form-control"  path="mobile" placeholder="mobile" required="required"/>
                                                      
                         
            			</div>
		    		    <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
                            </div>
                          
                    </form:form>
                    <!-- End | Register Form -->
</div>
</div>
</div>



${registered}
</body>
</html>