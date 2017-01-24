<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>card</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  footer {
    
    margin-top: 100px;
    
} 
body {
width:100%;
}
  </style>
</head>
<body  style="background-color:#ffffff;">

 <div class="text-center" >
  <h1 style="font-family:Georgia; font-size:40px;"><i>Mr.Online</i>



<!--  <div class="text-left" >
  <h1 style="font-family:Georgia; font-size:30px;"><i>SHOPIN </i>
    <img  src="https://www.sitewelder.com/art2012/logo-big-shopping.png" alt="logo" width="40px" height="40px" align="left" >
  <img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" alt="fb" width="25px" height="25px" align="right" >
  <img  src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" alt="twitter" width="25px" height="25px" align="right" >
  <img  src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" alt="linkedin" width="25px" height="25px" align="right" >
  </h1>
  
  </div> -->
  
     <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid"> 
  <div class="navbar-header" class=" pull-left">
  <a class="navbar-brand" style="font-size:27px;margin-top: -4px;">
     <i class="fa fa-opencart" aria-hidden="true"></i> Scart</a>
    <sec:authorize access="isAuthenticated()">
     <a class="navbar-brand" style="font-size:15px;"><span class="glyphicon glyphicon-user"></span> WELCOME <sec:authentication property="principal.username"/> </a>
     
  	
</sec:authorize>
    </div>
     <ul class="nav navbar-nav navbar-right" style="margin-bottom:-2px;">
      <%--  <li class="dropdown" >
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORIES
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${allCategory}" var="category">
				<a href="navproduct/${category.id }"><c:out value="${category.name}" /></a>
							<br>
						
					</c:forEach>
        </ul>
      </li> --%>
      
    
     <!--  <li><a href="">HOME</a></li> -->
       <sec:authorize access="!isAuthenticated()">
      <li><a href="Registration">REGISTER</a></li>
      <li><a href="Login">LOGIN</a></li>
      </sec:authorize>
<!-- 	  <li><a href="ABOUTUS">ABOUT US</a></li> -->
	  <li><a href="CONTACTUS">CONTACT US</a></li>
   <sec:authorize access="isAuthenticated()">
   <li ><a href="Cart1" ><p>CART <span class="glyphicon glyphicon-shopping-cart"></span></p></a></li>
	<li><a href="<c:url value="/perform_logout" />"><p>LOGOUT<span class="glyphicon glyphicon-log-out"></span></p></a></li>
</sec:authorize>
					  
   </ul>
   </div>
  </nav>
  

        <div class="container">
  <div class="row col-xs-4"></div>
  <div class="col-xs-4">
     <!-- CREDIT CARD FORM STARTS HERE -->
    <div class="panel panel-primary">
     <div class="panel-heading">
   
      <div class="row">
       <h3 class="panel-title " style="padding-left: 20px">Payment Details</h3>
       
      </div>
     </div>
     <div class="panel-body">
       <form method="post" action="${flowExecutionUrl}">
        <input type="hidden" name="_eventId" value="continue">
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
       <div class="row">
        <div class="col-xs-12">
         <div class="form-group">
          <label for="cardNumber">Card Number</label>
          <div class="form-group">
           <input type="text" class="form-control input-sm" name="cardNumber"
            placeholder="Valid Card Number" pattern="^[123456789]\d{15}$"
            title="Enter valid 16 digit number"
            required /> 
          </div>
         </div>
        </div>
       </div>
       <div class="row">
        <div class="col-xs-7 col-md-7">
         <div class="form-group">
          <label for="cardExpiry"><span class="hidden-xs">Expiration</span><span
           class="visible-xs-inline">EXP</span> DATE</label> <input type="tel"
           class="form-control input-sm" name="cardExpiry" placeholder="MM / YY"
            required />
         </div>
        </div>
        <div class="col-xs-5 col-md-5 pull-right">
         <div class="form-group">
          <label for="cardCVC">CVV Code</label> <input type="text" pattern="^[123456789]\d{2}$"  size="3"
           class="form-control input-sm" name="cardCVC" placeholder="CVV"
           required />
         </div>
        </div>
       </div>
       <div class="row">
        <div class="col-xs-12">
         <div class="form-group">
          <label for="name">Name</label> <input type="text"
           class="form-control input-sm" name="name" />
         </div>
        </div>
       </div> 
       
       <div class="row">
        <div class="col-xs-6 col-md-6">
        
         <button class="btn btn-success btn-sm btn-block" type="submit">Continue</button>  
        
        </div>
       
         <!--  <input type="submit" value="Continue"> -->
        </form>
        
       <form method="post" action="${flowExecutionUrl}">
        <input type="hidden" name="_eventId" value="cancel">
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
        <div class="col-xs-6 col-md-6">
        
         <button class="btn btn-success btn-sm btn-block" type="submit">Cancel</button>  
        
        </div>
       
        </form>
        </div>
     </div>
    </div>
    <!-- CREDIT CARD FORM ENDS HERE -->
</div>
     
</div> 


        
</body>
</html>