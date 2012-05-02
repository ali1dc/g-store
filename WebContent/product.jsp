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
</head>

<%
    
    User currentUser = (User) request.getSession().getAttribute("currentUser");
    int widthAdjust = 400;
    
    
    
%>

<jsp:useBean id="product" class="lib.Product" scope="request" />
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
        widthAdjust = widthAdjust - 75;
    }
%>

<body>
    <div id="page">
        <!-- Header -->
        <jsp:include page="includes/header.jsp"/>
        <!-- End of Header -->
        <div id="section">
            <nav id="primary-nav" class="embeddable primary-nav">
                <h2 class="primary-nav-heading">
                    Cart Information:
                </h2>
                <ul class="nav-links">
                    <li>No Item in Cart!</li>
                </ul>
                <h2 class="primary-nav-heading">
                    Categories:
                </h2>
                <ul class="nav-links">
                    <li><a href="#">Books</a></li>
                    <li><a href="#">Watches</a></li>
                    <li><a href="#">Movies</a></li>
                    <li><a href="#">Laptops</a></li>
                    <li><a href="#">Cameras</a></li>
                </ul>
                <h2 class="primary-nav-heading">
                    Today's Special:
                </h2>
                <ul class="nav-links">
                    <li><a href="#">today's special product</a></li>
                    <li><a href="/specials/">special items</a></li>
                </ul>
            </nav>
            <section class="threecol main">
                <div class="slide-block">
                    <div class="bluebox" id="featured" style="height: 
                         <jsp:getProperty name="product" property="productImageHeight"/>+100px;">
                        <div class="fadein">
                            <div class="ui-tabs-panel" id="fragment-1" style="display: block;">
                                
                                <div class="info">
                                    <h2>
                                        <jsp:getProperty name="product" property="productName"/>
                                        
                                    </h2>
                                    
                                        <h4><jsp:getProperty name="product" property="productDescription"/></h4>
                                        
                                        <br>
                                        <table>
                                            <tr>
                                                <td><h4><jsp:getProperty name="product" property="moneyMF"/></h4></td>
                                                <td>
                                                    <form name="" action="">
                                                        <input type="submit" value="Add to Cart">
                                                    </form>
                                                </td> 
                                            </tr>
                                        </table>
                                    
                                        
                                </div>
                            </div>
                            <img  src="<jsp:getProperty name="product" property="productImage"/>" 
                                  alt="<jsp:getProperty name="product" property="productDescription"/>"
                                  height="400"
                                  width="<%out.println(widthAdjust);%>">
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

                
            </section>
            <aside id="secondary-content" class="right sidebar">
                <div>
                    <h2 class="primary-nav-heading">
                        More Items to Consider:
                    </h2>
                    <ul class="nav-links">
                        <li><a href="ProductServlet?productID=<jsp:getProperty name="considerOne" property="productID"/>">
                                <jsp:getProperty name="considerOne" property="productName"/></a></li>
                        <li><a href="ProductServlet?productID=<jsp:getProperty
                            name="considerTwo" property="productID"/>">
                                   <jsp:getProperty
                            name="considerTwo" property="productName"/></a></li>
                        <li><a href="ProductServlet?productID=<jsp:getProperty
                            name="considerThree" property="productID"/>">
                                   <jsp:getProperty
                            name="considerThree" property="productName"/></a></li>
                        <li><a href="ProductServlet?productID=<jsp:getProperty
                            name="considerFour" property="productID"/>">
                                   <jsp:getProperty
                            name="considerFour" property="productName"/></a></li>
                        <li><a href="ProductServlet?productID=<jsp:getProperty
                            name="considerFive" property="productID"/>">
                                   <jsp:getProperty
                            name="considerFive" property="productName"/></a></li>
                    </ul>
                </div>
            </aside>
        </div>
        <!-- Footer -->
        <jsp:include page="includes/footer.jsp"/>
        <!-- End of Footer -->
    </div>
</body>
</html>