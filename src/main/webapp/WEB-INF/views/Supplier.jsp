<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/table.css"/>">
<style type="text/css">
.form-control {
  border-radius: 0px;
  margin-top: 10px !important;
}
</style>
</head>
<body>
<div class="container" >
    	<div class="modal-dialog">
			<div class="modal-content">
				         
                               <div id="div-forms">

		<c:url var="action" value="editsupplier"></c:url>
		<form:form action="${action}" modelAttribute="supplier"   id="login-form">
		   <div class="modal-body">
			<c:choose>
			<c:when test="${supplier.id gt 0}">
				<form:input class="form-control" path="id" readonly="true"/>
	 			</c:when></c:choose>
	 			
					<form:input class="form-control" path="name" placeholder="Enter the Name" required="required"/>
					<form:errors path="name"></form:errors>
					<form:input class="form-control input_text" path="address" placeholder="Address" required="required"/>
				 <form:errors path="address"></form:errors>
				<!-- <input type="submit" class="btn btn-primary" value="Save" />-->
						</div><!-- model body -->
						 <div class="modal-footer">
                            <div>
                                <button type="submit" class="btn btn-primary btn-lg btn-block" value="Save">Save</button>
                            </div>
						</div>
		</form:form></div></div></div></div>
		${successmessage }
	
		
			
		<div  align="center">
		<table class="table" style="width: 80%" border="1px">
			<caption>Suppliers</caption>
			<thead>
				<tr id="tr">
					<th>Supplier Id</th>
					<th id="td">Supplier Name</th>
					<th id="td">Supplier Address</th>
					<th id="td">Edit</th>
					<th id="td">Delete</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${supplierList}" var="supplier">
				<!-- 	<tr  data-ng-repeat="supplier in suppliers | orderBy:sortType:sortReverse | filter:search"> -->
					<tr>
						<td  id="td"><c:out value="${supplier.id}"/></td>
						<td id="td" ><c:out value="${supplier.name}"/></td>
						<td  id="td"><c:out value="${supplier.address}"/></td>
						<td id="td" ><a href="addeditsupplier/${supplier.id }"><img
								alt="Edit" ></a>
						<td id="td"><a href="adddeletesupplier/${supplier.id }"><img
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