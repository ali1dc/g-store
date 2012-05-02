<%@page import="lib.Product"%>
<%@page import="lib.WelcomeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome to our online store</title>
    <link href="css/base.css" rel="stylesheet" type="text/css" />
    <link href="css/item.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery-ui.custom.css" rel="stylesheet" type="text/css"/>
    <link href="js/plugins/reveal/reveal.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/plugins/validate/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/plugins/reveal/jquery.reveal.js"></script>    
    <script type="text/javascript" src="js/slide.js"></script>
	<script type="text/javascript" src="js/gstore-jquery.js"></script>

</head>

<%
WelcomeBean wb = new WelcomeBean();
Product one = wb.getShowOne();
Product two = wb.getShowTwo();
Product three = wb.getShowThree();
Product four = wb.getShowFour();
Product five = wb.getShowFive();
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
                        <div class="bluebox" id="featured" style="height: 500px;">
                           
                        <div class="fadein">
                            <div class="ui-tabs-panel" id="fragment-1">
                                <table>
                                <tr>
                                <td>
                                <img alt="<%out.println(one.getProductName());%>"
                                     src="<%out.println(one.getProductImage());%>"
                                     height="400"
                                     width="300">
                                </td>
                                <td>
                                <div class="info">
                                    <h2>
                                        <a href="ProductServlet?productID=<%out.println(one.getProductID());%>">
                                            <%out.println(one.getProductName());%></a></h2>
                                    
                                </div>
                                </td>
                                </tr>
                                </table>
                            </div>
                            <div class="ui-tabs-panel" id="fragment-2">
                                <table>
                                <tr>
                                <td>
                                <img alt="<%out.println(two.getProductDescription());%>"
                                     src="<%out.println(two.getProductImage());%>"
                                     height="400"
                                     width="300">
                                </td>
                                <td>
                                <div class="info">
                                    <h2>
                                        <a href="ProductServlet?productID=<%out.println(two.getProductID());%>">
                                            <%out.println(two.getProductName());%></a>
                                    </h2>
                                    
                                </div>
                                </td>
                                </tr>
                                </table>
                            </div>
                            <div class="ui-tabs-panel" id="fragment-3">
                                <table>
                                <tr>
                                <td>
                                <img alt="<%out.println(three.getProductName());%>"
                                     src="<%out.println(three.getProductImage());%>"
                                     height="400"
                                     width="300">
                                </td>
                                <td>
                                <div class="info">
                                    <h2>
                                        <a href="ProductServlet?productID=<%out.println(three.getProductID());%>">
                                            <%out.println(three.getProductName());%></a>
                                    </h2>
                                    
                                </div>
                                </td>
                                </tr>
                                </table>
                            </div>
                            <div class="ui-tabs-panel" id="fragment-4">
                                <table>
                                <tr>
                                <td>
                                <img alt="<%out.println(four.getProductDescription());%>"
                                     src="<%out.println(four.getProductImage());%>"
                                     height="400"
                                     width="300">
                                </td>
                                <td>
                                <div class="info">
                                    <h2>
                                        <a href="ProductServlet?productID=<%out.println(four.getProductID());%>">
                                            <%out.println(four.getProductName());%></a></h2>
                                    
                                </div>
                                </td>
                                </tr>
                                </table>
                            </div>
                            <div class="ui-tabs-panel" id="fragment-5">
                                <table>
                                <tr>
                                <td>
                                <img alt="<%out.println(five.getProductDescription());%>"
                                     src="<%out.println(five.getProductImage());%>"
                                     height="400"
                                     width="300">
                                </td>
                                <td>
                                <div class="info">
                                    <h2>
                                        <a href="ProductServlet?productID=<%out.println(five.getProductID());%>">
                                            <%out.println(five.getProductName());%></a></h2>
                                    
                                </div>
                                </td>
                                </tr>
                                </table>
                            </div>
                        </div>
                        <ul class="ui-tabs-nav">
                            <li id="nav-fragment-1" class="ui-tabs-nav-item ui-tabs-selected"><a href="#fragment-1">1</a></li>
                            <li id="nav-fragment-2" class="ui-tabs-nav-item"><a href="#fragment-2">2</a></li>
                            <li id="nav-fragment-3" class="ui-tabs-nav-item"><a href="#fragment-3">3</a></li>
                            <li id="nav-fragment-4" class="ui-tabs-nav-item"><a href="#fragment-4">4</a></li>
                            <li id="nav-fragment-5" class="ui-tabs-nav-item"><a href="#fragment-5">5</a></li>
                        </ul>
                    </div>
                </div>

                
            </section>
            <jsp:include page="includes/nav-shopping-cart.jsp"/>
        </div>
        <!-- Footer -->
        <jsp:include page="includes/footer.jsp"/>
        <!-- End of Footer -->
    </div>
</body>
</html>