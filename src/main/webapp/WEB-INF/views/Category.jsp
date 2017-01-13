<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="text-center myForm">
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
	</div>
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