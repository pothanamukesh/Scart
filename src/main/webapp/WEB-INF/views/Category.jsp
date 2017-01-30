<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/table.css"/>">
<style type="text/css">
.form-control {
  border-radius: 0px;
  margin-top: 10px !important;
}</style>
<style>#myCarousel{display:none;}</style>
</head>
<body>

<div class="container" >
    	<div class="modal-dialog">
			<div class="modal-content">
				         
                               <div id="div-forms">

		<c:url var="action" value="editcategory"></c:url>
		<form:form action="${action}" modelAttribute="category"   id="login-form">
		   <div class="modal-body">
			<c:choose>
			<c:when test="${category.id gt 0}">
				<form:input class="form-control" path="id" readonly="true"/>
	 			</c:when></c:choose>
	 				<form:input class="form-control" path="name" placeholder="Enter the Name" required="required"/>
					<form:errors path="name"></form:errors>
					<form:input class="form-control input_text" path="description" placeholder="Address" required="required"/>
				 <form:errors path="description"></form:errors>
				<!-- <input type="submit" class="btn btn-primary" value="Save" />-->
						</div><!-- model body -->
						 <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block" value="Save">Save</button>
                            </div>
						</div>
		</form:form></div></div></div></div>
		${successmessage } 
	
<%--   <div class="text-center myForm">
		<c:url var="action" value="editcategory"></c:url>
		<form:form action="${action}" modelAttribute="category" >
			<table>
			<c:choose>
			<c:when test="${categoryid gt 0}">
				<tr>
					<td>ID:</td>
					<td><form:input class="input1" path="id" readonly="true" /></td>
				</tr>
				</c:when></c:choose>
				<tr>
					<td>Name:</td>
					<td><form:input class="input1" path="name" required="true"/></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><form:input class="input1" path="description" required="true"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" class="btn btn-primary" value="Save" /></td>
				</tr>
			</table>
		</form:form>
	</div>  --%>
	<div align="center">
		<table class="table" style="width: 80%" border="1px">
			<caption>Categories</caption>
			<thead>
				<tr >
					<th>Category Id</th>
					<th>Category Name</th>
					<th>Category Description</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${categoryList}" var="category">
					<tr >
						<td ><c:out value="${category.id}" />
						<td ><c:out value="${category.name}" />
						<td ><c:out value="${category.description}" />
						<td ><a href="addeditcategory/${category.id }"><img
								alt="Edit" src=""></a>
						<td id="td1"><a href="adddeletecategory/${category.id }"><img
								alt="Delete" src=""></a>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>