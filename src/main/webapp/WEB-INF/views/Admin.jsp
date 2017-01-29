<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<title>Admin Page</title>
<body >
</head>
<body ng-app="myApp">
${message}
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
       </div>
    <ul class="nav navbar-nav">
     <i class="fa fa-opencart" aria-hidden="true"></i> Scart</a>
          <a class="navbar-brand" style="font-size:15px;"><span class="glyphicon glyphicon-user"></span> WELCOME ADMIN </a>
       <li><a class="active" href="Supplier">Supplier</a></li>
      <li><a href="Product">Product</a></li>
      <li><a href="Category">Category</a></li>
       
    </ul>
    <ul class="nav navbar-nav navbar-right" style="margin-bottom:-2px;"> 
       	  <li><a href="perform_logout">LOGOUT</a></li>

					  
   </ul>
  </div>
</nav>
${msg}
${msg1 }
<h1>WellCome Admin </h1>

<c:choose>
<c:when test="${showSupplierpage}">
<c:import url="/WEB-INF/views/Supplier.jsp"></c:import>
</c:when>
</c:choose>

<c:choose>
<c:when test="${showProductpage}">
<c:import url="/WEB-INF/views/Product.jsp"></c:import>
</c:when>
</c:choose> 
<c:choose>
<c:when test="${showCategory}">
<c:import url="/WEB-INF/views/Category.jsp"></c:import>
</c:when>
</c:choose>
<c:choose>
<c:when test="${UserClickedContactUs}">
<c:import url="/WEB-INF/views/Login.jsp"></c:import>
</c:when>
</c:choose>
<c:choose>
<c:when test="${Clickedcatproduct}">
<c:import url="/WEB-INF/views/catproducts.jsp"></c:import>
</c:when>
</c:choose>

<div class="ng-view"></div>

<script>
var app = angular.module("myApp", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/Supplier", {
        templateUrl : "Supplier"
    })
    .when("/Category", {
        templateUrl : "Category"
    })
    .when("/Product", {
        templateUrl : "Product"
    });
});
</script> 
</body>
</html>