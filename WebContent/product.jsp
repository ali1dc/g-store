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
    int widthAdjust = 400;
    
    
    
%>


<jsp:useBean id="considerOne" class="lib.Product" scope="request" />
<jsp:useBean id="considerTwo" class="lib.Product" scope="request" />
<jsp:useBean id="considerThree" class="lib.Product" scope="request" />
<jsp:useBean id="considerFour" class="lib.Product" scope="request" />
<jsp:useBean id="considerFive" class="lib.Product" scope="request" />


<%
    if(product.getProductID()>30){
        widthAdjust = widthAdjust + 125;
    }
    if(product.getProductID()>40){
        widthAdjust = widthAdjust - 50;
    }
%>

<body>
    <div id="page">
        <!-- Header -->
        <jsp:include page="includes/header.jsp"/>
        <!-- End of Header -->
        <div id="section">
			<jsp:include page="includes/nav-left.jsp"/>
            <section class="threecol main">

                <div class="slide-block">
                    <div class="bluebox" id="featured" 
                        <div class="fadein">
                            <div class="ui-tabs-panel" id="fragment-1" style="display: block;">
                                
                                
                            <div class="ui-tabs-panel " id="fragment-2" style="display: none;">
                                <img alt="product 2 image" src="#">
                                <div class="info">
                                    <h2>
                                        <a href="#">product 2 title</a>
                                    </h2>
                                    <p class="long">
                                        this is description for product 1
                                    </p>
                                    <a class="find-more" href="#">more detail</a>
                                </div>
                            </div>
                            <div class="ui-tabs-panel " id="fragment-3" style="display: none;">
                                <img alt="product 3 image" src="#">
                                <div class="info">
                                    <h2>
                                        <a href="#">product 3 title</a>
                                    </h2>
                                    <p class="long">
                                        this is description for product 1
                                    </p>
                                    <a class="find-more" href="#">more detail</a>
                                </div>
                            </div>
                            <div class="ui-tabs-panel " id="fragment-4" style="display: none;">
                                <img alt="product 4 image" src="#">
                                <div class="info">
                                    <h2>
                                        <a href="#">product 4 detail</a></h2>
                                    <p class="long">
                                        this is description for product 1
                                    </p>
                                    <a class="find-more" href="#">more detail</a>
                                </div>
                            </div>
                            <div class="ui-tabs-panel " id="fragment-5" style="display: none;">
                                <img alt="product 5 image" src="#">
                                <div class="info">
                                    <h2>
                                        <a href="#">product 5 title</a></h2>
                                    <p class="long">
                                        this is description for product 1
                                    </p>
                                    <a class="find-more" href="#">more detail</a>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>

                
	            <div class="bluebox" style="height:500px">
	            	<img style="float:left;margin-right:10px" alt="<%out.println(product.getProductName());%>" src="<%out.print(product.getProductImage());%>" />
	              <div class="info">
	                  <h2><%out.println(product.getProductName());%></h2>
	                  <br />
	                  <p class="long">
	                      <% out.println(product.getProductDescription()); %>
	                  </p>
                          <a class="green-btn find-more add-to-cart" style="float:right" id="<%out.print(product.getProductID());%>" href="javascript:void(0)">Add to cart</a>
                          <br>
                          <h4 ><%out.println(product.getMoneyMF());%></h4>
	                  
                          
	              </div>
	            </div>

            </section>
            <jsp:include page="includes/nav-shopping-cart.jsp"/>
        </div>
        
        <jsp:include page="includes/footer.jsp"/>
    </div>
</body>
</html>