<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<meta name="viewport" content="width = device-width, initial-scale = 1">
<title>Home Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/HomeStyle.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/slider.css"/>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="<c:url value="/resources/js/image_js.js" />"></script>
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
  body{padding-top:52px;}
  </style>

</head>
<body>
<header class="nav-locale-in nav-lang-en nav-unrec">
<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" id="navbar">
  <div class="">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="home.jsp">Scart</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <form class="navbar-form navbar-left " role="search" >
                    <div class="form-group" >
                              <div class="input-group input-group-sm ">
                              <input type="text" class="form-control" id="search-bar" placeholder="Search for...">
                               <span class="input-group-btn">
                                <button class="btn btn-warning" type="button" id="search-bar-button"> 
                                <i class="glyphicon glyphicon-search"></i></button>
                              </span>
                           </div><!-- /input-group -->
                    </div> <!--end form grop-->      
                </form>
     <ul class="nav navbar-nav navbar-right">
           <sec:authorize access="!isAuthenticated()">
    
			      <li><a href="registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			      <li><a href="login"  id="mylogin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			      </sec:authorize>
             </ul>
           
      <sec:authorize access="isAuthenticated()">
      
     <ul class="nav navbar-nav navbar-right">
		      <li><a href="CartPage"><span class="glyphicon glyphicon-user"></span>Cart</a></li>
			<li><a href="<c:url value="/perform_logout" />">Logout</a></li>
			<li><a href="">Welcome  <sec:authentication property="principal.username"/></a></li></ul>
		</sec:authorize>
     
     
     
     
     
     </div><!--right main-->
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
   
    <div class="" id="nav-main">
      <div class="nav-left">
         <div id="nav-shop">
      		   <ul class="nav-categeory ullink ">
                 <li class="categeory">
                 <c:forEach items="${CategoryList}" var="category" >
                 <a class="alink" href="navproducts/${category.id}"><c:out value="${category.name}" />
                </a>					
					</c:forEach></li>
                   		 </ul><!--ul end-->        
   </div><!--nav-shop-->
         </div><!--left-->
           <div class="nav-right">
           <div id="nav-tools">
           <!-- <a href="#" class="nav-a nav-a-2">
           <span class="nav-line-1">Hello.Sign in</span>
           <span class="nav-line-2">Your Orders<span class="nav-icon nav-arrow" style="visibility:visible"></span></span>
           </a>
           <a href="#" class="nav-a nav-a-2" id="nav-try">
           <span class="nav-line-1">Try</span>
           <span class="nav-line-2">Prime<span class="nav-icon nav-arrow" style="visibility:visible"></span></span>
           </a> -->
           <a href="CartPage"><span class="glyphicon glyphicon-user"></span>Cart</a>
     	 </div><!--nav tools-->
     </div><!--nav right--> 
        
  </div><!--nav-main-->
     </nav>
    </header><br><br>
    <!-- ####################################################################################################### -->
	<div class="">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="F:\NIIT\Project\Scart\src\main\webapp\resources\images\mac book.jpg" alt="Chania" style=" width:100%; height:240px">
				</div>

				<div class="item ">
					<img src="D:\images\mobile1.jpg" alt="Chania"  style=" width:100%; height:240px">
				</div>

				<!-- <div class="item">
					<img src="D:\images\pc3.jpg" alt="Flower" width="320" height="240">
				</div> -->
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	



<!-- ############################################################################################################## -->


	 <h1>Home Page</h1>
	<!--  if user logged in these liks are not display-->
	<%-- <c:if test="${ empty successMsg}">
		<a href="login">Login</a>
		<br>
		<a href="registration">Register</a>
		<a href="Admin"> Admin</a>
	</c:if>  --%>
	

	<hr>
	${successMsg} ${errorMSG }


	<c:if test="${UserClickedLogin}">
		<jsp:include page="login.jsp"></jsp:include>
	</c:if>
	<c:if test="${not empty errorMSG}">
		<jsp:include page="login.jsp"></jsp:include>
	</c:if>


	<c:if test="${showregistionpage}">
		<jsp:include page="registration.jsp"></jsp:include></c:if>

	<c:if test="${showCategory}">
		<jsp:include page="Category.jsp"></jsp:include></c:if>

	<c:if test="${showSupplierpage}">
		<jsp:include page="Supplier.jsp"></jsp:include></c:if>

	<c:if test="${showProductpage}">
		<jsp:include page="Product.jsp"></jsp:include></c:if>
		
		<c:if test="${showadminPage}">
		<jsp:include page="Admin.jsp"></jsp:include></c:if>
		<c:if test="${UserClickedCart}">
		<jsp:include page="CartPage.jsp"></jsp:include></c:if>
		
		<c:choose>
		<c:when test="${Clickedshowproduct}">
			<c:import url="/WEB-INF/views/ShowProduct.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
	<c:when test="${Clickedcatproduct}">
			<c:import url="/WEB-INF/views/catproducts.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
	<c:when test="${UserClickedCart}">
			<c:import url="/WEB-INF/views/CartPage.jsp"></c:import>
		</c:when>
	</c:choose>
	<!-- ########################################################################################### -->

<c:forEach items="${productList}" var="product" end="3">
			<div class="responsive">
              <div class="img">

						<a href="ShowProduct/${product.id}"> <img height="200px"
							width="200px" alt="${product.id }"
							src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>
				
			<div class="desc">
			<c:out value="${product.name}" />
			<c:url var="action" value="addtocart/${product.id}/${userid }"></c:url>
			<form:form action="${action}" modelAttribute="cart">
			<input type="submit" class="btn btn-primary" value="Add To Cart" />
			</form:form>
			</div>
			</div>
			</div>
		</c:forEach> 

	
		
</body>
</html>