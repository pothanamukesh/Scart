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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
      <a class="navbar-brand" href="#">Brand</a>
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
        <li><a href="login">Login<span class="glyphicons glyphicons-log-in"></span></a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
     </div><!--right main-->
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
   
    <div class="" id="nav-main">
      <div class="nav-left">
         <div id="nav-shop">
      		   <ul class="nav-categeory ullink ">
                 <li class="categeory dopdown">
                 <c:forEach items="${CategoryList}" var="category" >
                 <a href="navproducts/${category.id}"><c:out value="${category.name}" />
                </a>
																
					</c:forEach></li>
                   		 </ul><!--ul end-->        
   </div><!--nav-shop-->
         </div><!--left-->
           <div class="nav-right">
           <div id="nav-tools">
           <a href="#" class="nav-a nav-a-2">
           <span class="nav-line-1">Hello.Sign in</span>
           <span class="nav-line-2">Your Orders<span class="nav-icon nav-arrow" style="visibility:visible"></span></span>
           </a>
           <a href="#" class="nav-a nav-a-2" id="nav-try">
           <span class="nav-line-1">Try</span>
           <span class="nav-line-2">Prime<span class="nav-icon nav-arrow" style="visibility:visible"></span></span>
           </a>
           <sec:authorize access="!isAuthenticated()">
    
			      <li><a href="Registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			    <!--   <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
			      </sec:authorize>
             </ul>
           
      <sec:authorize access="isAuthenticated()">
      
     <ul class="nav navbar-nav navbar-right">
		      <li><a href="Cart"><span class="glyphicon glyphicon-user"></span>Cart</a></li>
			<li><a href="<c:url value="/perform_logout" />">Logout</a></li>
			<li><a href="">Welcome  <sec:authentication property="principal.username"/></a></li></ul>
		</sec:authorize>
           	 </div><!--nav tools-->
     </div><!--nav right--> 
        
  </div><!--nav-main-->
     </nav>
    </header>






<!-- ############################################################################################################## -->
<div class="container" >

	<h1>Home Page</h1>
	<!--  if user logged in these liks are not display-->
	<c:if test="${ empty successMsg}">
		<a href="login">Login</a>
		<br>
		<a href="registration">Register</a>
		<a href="Admin"> Admin</a>
	</c:if>
	

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
		<c:if test="${Clickedcatproduct}">
      <jsp:include page="catproducts.jsp"></jsp:include></c:if> 
		
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
	<!-- ########################################################################################### -->
	<c:forEach items="${productList}" var="product">
			<tr>


				<td>
					<!-- --<div class="thumbnail">-->
					<div class="col-md-4">
						<a href="ShowProduct/${product.id}"> <img height="150px"
							width="150px" alt="${product.id }"
							src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>

						<td><c:url var="action" value="addtocart/${product.id}"></c:url>
							<form:form action="${action}" modelAttribute="cart">
								<td id="td1"><c:out value="${product.name}" /><br>
								<td id="td1"><c:out value="${product.price}" /> <input
									type="submit" class="btn btn-primary" value="Add To Cart" /><br>
							</form:form></td>
						<br>

					</div>
			</tr>
			</td>
		</c:forEach>
	

</div>
</body>
</html>