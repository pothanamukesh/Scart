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
		<c:url var="action" value="editsupplier"></c:url>
		<form:form action="${action}" modelAttribute="supplier">
			<table>
			<c:choose>
			<c:when test="${supplier.id gt 0}">
				 <tr><td>ID:</td>
					<td><form:input class="input1" path="id" readonly="true"/></td>
				</tr> 
				</c:when></c:choose>
				<tr>
					<td>Name:</td>
					<td><form:input class="input1" path="name" /></td>
					<td><form:errors path="name"></form:errors>
				
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input class="input1" path="address" /></td>
				 <td><form:errors path="address"></form:errors>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" class="btn btn-primary" value="Save" /></td>
				</tr>			</table>
		</form:form>
	</div>
	
		${successmessage }
	
		
			
				<div align="center">
		<table class="table1" style="width: 80%" border="1px">
			<caption>Suppliers</caption>
			<thead>
				<tr >
					<th>Supplier Id</th>
					<th>Supplier Name</th>
					<th>Supplier Address</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${supplierList}" var="supplier">
					<tr  data-ng-repeat="supplier in suppliers | orderBy:sortType:sortReverse | filter:search">
					
						<td ><c:out value="${supplier.id}"/></td>
						<td ><c:out value="${supplier.name}"/></td>
						<td ><c:out value="${supplier.address}"/></td>
						<td ><a href="addeditsupplier/${supplier.id }"><img
								alt="Edit" ></a>
						<td id="td1"><a href="adddeletesupplier/${supplier.id }"><img
								alt="Delete"> </a>
								</td>
							</tr>
						</c:forEach>
				
			</tbody>
		</table>
		</div>
			</div>
		

</body>
</html>