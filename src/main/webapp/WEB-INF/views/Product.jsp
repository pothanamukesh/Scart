<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/table.css"/>">
<style type="text/css">
.form-control {
  border-radius: 0px;
  margin-top: 10px !important;
}</style>
</head>
<body>
<div class="container" >
    	<div class="modal-dialog">
			<div class="modal-content">
				         
                               <div id="div-forms">

		<c:url var="action" value="editproduct"></c:url>
		<form:form action="${action}" modelAttribute="product"
			enctype="multipart/form-data" method="post">
			<table align="center">
				<c:choose>
					<c:when test="${product.id gt 0}">
						<tr>
							<td>ID:</td>
							<td><form:input class="form-control" path="id" readonly="true" /></td>
						</tr>
					</c:when>
				</c:choose>
				<tr>
					<td>Name:</td>
					<td><form:input class="form-control" path="name" required="true"/></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><form:input class="form-control" path="description" required="true"/></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><form:input class="form-control" type="number" path="price" required="true" min="1" /></td>
				</tr>
				<tr>
				<td>Category:</td>
				<td><form:select path="category_id" required="true">
				<c:forEach items="${CategoryList}" var="category">
								<form:option class="form-control" value="${category.id}">${category.name}</form:option>
							</c:forEach>
								</form:select></td></tr>
						<tr>
								<td>Supplier:</td>
				<td><form:select path="supplier_id" required="true">
				<c:forEach items="${SupplierList}" var="supplier">
								<form:option class="form-control"  value="${supplier.id}">${supplier.name}</form:option>
							</c:forEach>
								</form:select></td></tr>
				<tr>
					<td>Image:</td>
					<td><form:input type="file"
							class=" btn btn-default btn-block form-control" path="image"
							required="true" /></td>
				</tr>
				</table>
			<div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block" value="Save">Save</button>
                            </div>
						</div>
		</form:form></div></div>	</div>
			${successmessage } 
	</div>
	<div align="center">
		<table class="table" style="width: 80%" border="1px">
			<caption>Products</caption>
			<thead>
				<tr >
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Product Description</th>
					<th>Product Price</th>
					<th>Category ID</th>
					<th>Supplier ID</th>
					<th>Image</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ProductList}" var="product">
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