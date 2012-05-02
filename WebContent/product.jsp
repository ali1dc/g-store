<%@page import="lib.User"%>
<%@page import="lib.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Online Generic Store : Product Page : </title>
    <link href="css/base.css" rel="stylesheet" type="text/css" />
    <link href="css/item.css" rel="stylesheet" type="text/css" />
    <link href="js/plugins/reveal/reveal.css" rel="stylesheet" type="text/css" />
    
    <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/plugins/reveal/jquery.reveal.js"></script>    
    <script type="text/javascript" src="js/plugins/validate/jquery.validate.min.js"></script>    
    <script type="text/javascript" src="js/gstore-jquery.js"></script>
</head>

<%
    Product product = (Product) request.getAttribute("product");
    User currentUser = (User) request.getSession().getAttribute("currentUser");
%>

<body>
    <div id="page">
        <!-- Header -->
        <jsp:include page="includes/header.jsp"/>
        <!-- End of Header -->
        <div id="section">
			<jsp:include page="includes/nav-left.jsp"/>
            <section class="threecol main">
	            <div class="bluebox" style="height:500px">
	            	<img style="float:left;margin-right:10px" alt="<%out.println(product.getProductName());%>" src="<%out.print(product.getProductImage());%>" />
	              <div class="info">
	                  <h2><%out.println(product.getProductName());%></h2>
	                  <br />
	                  <p class="long">
	                      <% out.println(product.getProductDescription()); %>
	                  </p>
	                  <a class="green-btn find-more add-to-cart" style="float:right" id="<%out.print(product.getProductID());%>" href="javascript:void(0)">Add to cart</a>
	              </div>
	            </div>
            </section>
            <jsp:include page="includes/nav-shopping-cart.jsp"/>
        </div>
        
        <jsp:include page="includes/footer.jsp"/>
    </div>
</body>
</html>