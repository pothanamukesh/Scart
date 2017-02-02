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
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/HomeStyle.css"/>">

<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.min.css" />">
<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />"rel="stylesheet">


<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>

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
     		
						
     
     </div><!--right main-->
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
   
    <div class="" id="nav-main">
      <div class="nav-left">
         <div id="nav-shop">
      		   <ul class="nav-categeory ullink ">
                 <li class="categeory">
                 <c:forEach items="${CategoryList}" var="category" >
                 <a class="alink" id="mycategory"href="navproducts/${category.id}"><c:out value="${category.name}" />
                </a>					
					</c:forEach></li>
                   		 </ul><!--ul end--> 
                   		 
	     
   </div><!--nav-shop-->
         </div><!--left-->
           <div class="nav-right">
           <div id="nav-tools">
            <ul class="nav navbar-nav navbar-right">
           <sec:authorize access="!isAuthenticated()">
    
			      <li><a  class="alink" href="registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			      <li><a  class="alink" href="login"  id="mylogin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			      </sec:authorize>
             </ul>
           
      <sec:authorize access="isAuthenticated()">
      
     <ul class="nav navbar-nav navbar-right">
<!-- 		      <li><a  class="alink" href="Cart"><span class="glyphicon glyphicon-user"></span>Cart</a></li>
 -->			<li style="float: right"><a href="Cart"
									class="w3-hover-none w3-text-sand w3-hover-text-white"><i
										class="fa fa-shopping-cart"></i> <span
										class="w3-badge w3-white"><c:out value="${cartsize}"></c:out> </span></a></li>
 <li><a  class="alink" href="<c:url value="/perform_logout" />">Logout</a></li>
			<li><a  class="alink" href="#">Hi  <sec:authentication property="principal.username"/></a></li></ul>
		</sec:authorize>
      
     	 </div><!--nav tools-->
     </div><!--nav right--> 
        
  </div><!--nav-main-->
     </nav>
    </header><br><br>
    <!-- ####################################################################################################### -->
   
    <c:if test="${empty LoggedIn}">
   
	<div class="">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
<!-- 				<li data-target="#myCarousel" data-slide-to="3"></li>
 -->			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img alt="Chania" style=" width:100%; height:240px" src="<c:url value="/resources/img/img1.jpg"></c:url>"> 
				</div>

				<div class="item ">
					<img alt="Chania"  style=" width:100%; height:240px"src="<c:url value="/resources/img/img2.jpg"></c:url>">
				</div>

				<div class="item">
                   <img alt="Chania"  style=" width:100%; height:240px"src="<c:url value="/resources/img/printer.jpg"></c:url>">			
                </div> 
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
	
</c:if>


<!-- ############################################################################################################## -->

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
<c:if test="${empty LoggedIn}">

		<c:choose>
			<c:when test="${!Administrator}">
				<c:if test="${!empty ProductList}">
					<div id="myproduct">
						<!-- <ul> -->
						<div class="row" id="myproduct"
							style="padding-top: 20px; padding-botton: 20px; padding-left: 20px; padding-bottom: 20px;">
							<!-- <h3 style="margin-left: 15px">Latest Products</h3> -->
							<c:forEach items="${ProductList}" var="product">
								<div class="col-xs-2 w3-animate-zoom">
									<div class="img" style="margin: 5px">
										<a href="ShowProduct/${product.id}"> <img height="192px"
							                                width="192px" alt="${product.id }"
							src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>
										<div class="desc w3-black" style="opacity: 0.9">
											<p>
												${product.name}<br> <i class="fa fa-inr" aria-hidden="true"></i> ${product.price}
												
											</p>

										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<!-- </ul> -->
					</div>
				</c:if>
			</c:when>
		</c:choose>
	</c:if>

		<!-- ############################################################################################################3 -->
	
				<footer class="footer-distributed w3-card-4 w3-black w3-margin-0"
		style="opacity: 0.9">
		<div class="footer-left" style="margin-top: 10px">
					<table class="table">
						<thead>
							<tr>
								<th>OUR COMPANY</th>
								<th>TOP CATEGORIES</th>
								<th>POLICIES AND INFO</th>
							</tr>
						</thead>
						<tbody>

							<tr>

								<td>About us<br> Scart<br> Ethnico<br>
									Place of Origin<br> Blog<br>
								</td>

								<td>Watches<br> Dresses<br> Mobiles<br>
									Accessories<br> Salwar Suits<br></td>
								<td>Terms & Conditions<br> Policy for Sellers<br>
									Policy for Buyers<br> Shipping & Refund Policies<br>
									Wholesale Policy<br> Privacy Policy<br></td>
							</tr>

							<tr>
								<th>SUPPORT</th>
								<th>PAYMENT OPTIONS</th>
								<th>STAY CONNECTED</th>
							</tr>


							<tr>
								<td><i class="fa fa-envelope"
									style="font-size: 30px; color: blue"></i> <a
									href="mailto:support@company.com">support@Scart.com</a><br>
									<i class="fa fa-phone" style="font-size: 30px; color: blue"></p></i><br> <i class="fa fa-map-marker"
									style="font-size: 30px; color: blue"></i>
									<br></td>
								<td><div class="footer-icons">
										<a href=""><i class="fa fa-facebook-official"
											style="font-size: 30px; color: blue"></i> <a href=""><i
												class="fa fa-twitter"
												style="font-size: 30px; color: #00ffff"></i></a> <a href=""><i
												class="fa fa-linkedin-square"
												style="font-size: 30px; color: blue"></i></a> <a href=""><i
												class="fa fa-google" style="font-size: 30px; color: #3366ff"></i></a>
											<a href=""><i class="fa fa-google-plus-official"
												style="font-size: 30px; color: red"></i></a> <a href=""><i
												class="fa fa-whatsapp"
												style="font-size: 30px; color: #33ff00"></i></a>
									</div></td>
								<td><a href=""><i class="fa fa-paypal"
										aria-hidden="true" style="font-size: 30px; color: #0066ff"></i>
								</a> . <a href=""><i class="fa fa-cc-amex" aria-hidden="true"
										style="font-size: 30px; color: #0066ff"></i> </a> . <a href=""><i
										class="fa fa-cc-mastercard" aria-hidden="true"
										style="font-size: 30px; color: #0066ff"></i> </a> . <a href=""><i
										class="fa fa-cc-visa" aria-hidden="true"
										style="font-size: 30px; color: #0066ff"></i> </a> . <a href=""><i
										class="fa fa-credit-card" aria-hidden="true"
										style="font-size: 30px; color: #0066ff"></i> </a> . <a href=""><i
										class="fa fa-google-wallet" aria-hidden="true"
										style="font-size: 30px; color: #0066ff"></i> </a> . <a href=""><i
										class="fa fa-cc-stripe" aria-hidden="true"
										style="font-size: 30px; color: #0066ff"></i> </a></td>
						</tbody>
					</table>
					</div>
					</footer>
				
		
</body>
</html>