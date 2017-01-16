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
		<c:url var="action" value="editproduct"></c:url>
		<form:form action="${action}" modelAttribute="product"
			enctype="multipart/form-data" method="post">
			<table>
				<c:choose>
					<c:when test="${product.id gt 0}">
						<tr>
							<td>ID:</td>
							<td><form:input class="input1" path="id" readonly="true" /></td>
						</tr>
					</c:when>
				</c:choose>
				<tr>
					<td>Name:</td>
					<td><form:input class="input1" path="name" required="true"/></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><form:input class="input1" path="description" required="true"/></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><form:input class="input1" type="number" path="price" required="true" min="1" /></td>
				</tr>
				<tr>
				<td>Category:</td>
				<td><form:select path="id" required="true">
				<c:forEach items="${categoryList}" var="category">
								<form:option class="input1" value="${category.id}">${category.name}</form:option>
							</c:forEach>
								</form:select></td></tr>
						<tr>
								<td>Supplier:</td>
				<td><form:select path="id" required="true">
				<c:forEach items="${supplierList}" var="supplier">
								<form:option class="input1"  value="${supplier.id}">${supplier.name}</form:option>
							</c:forEach>
								</form:select></td></tr>
				<tr>
					<td>Image:</td>
					<td><form:input type="file"
							class=" btn btn-default btn-block form-control" path="image"
							required="true" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" class="btn btn-primary" value="Save" /></td>
				</tr>
			</table>
		</form:form>
	</div>
	<div align="center">
		<table class="table1" style="width: 80%" border="1px">
			<caption>Products</caption>
			<thead>
				<tr id="tr1">
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Product Description</th>
					<th>Product Price</th>
					<th>Category</th>
					<th>Supplier</th>
					<th>Image</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${productList}" var="product">
					<tr >
						<td align="center"><c:out value="${product.id}" />
						<td ><c:out value="${product.name}" />
						<td ><c:out value="${product.description}" />
						<td ><c:out value="${product.price}" />
						<td ><c:out value="${product.category_id}" />
						<td ><c:out value="${product.supplier_id}" />
						<td><div class="thumbnail">
								<img height="100px" width="100px" alt="${product.id }"
									src="<c:url value="/resources/images/${product.id }.jpg"></c:url>">
							</div>
						<td ><a href="addeditproduct/${product.id }"><img
								alt="Edit" ></a>
						<td i><a href="adddeleteproduct/${product.id }"><img
								alt="Delete"> </a>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
	</div>

</body>
</html>