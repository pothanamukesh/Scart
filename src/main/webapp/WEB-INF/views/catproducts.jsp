<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

  <title>category list</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 <style>
{
   
    background-color: #ffe6e6  ;
}
</style>
<!-- <style>#myCarousel{display:none;}</style>
 --></head>
<body > 

<c:forEach items="${navproducts}" var="product">
		<!--  <div class="row"> -->
     <div class="col-xs-3" class="thumbnail">
 	 			 
	<a href="ShowProduct/${product.id}" > <img height="200px" width="200px" alt="${product.id }"
	src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>
  <div class="desc">
         Product Id : <c:out value="${product.id}" /><br>
         Product Name : <c:out value="${product.name }"/>
   <c:url var="action" value="addtoCart/${userid}/${product.id}"></c:url>
   <form:form action="${action}" commandName="cart">
   <input type="submit" class="btn btn-primary" value="Add To Cart" />
   </form:form>
							</div>
							</div>	
							</c:forEach>
	<c:choose>
		<c:when test="${UserClickedCart}">
			<c:import url="/WEB-INF/views/CartPage.jsp"></c:import>
		</c:when>
	</c:choose>



</body>
</html>