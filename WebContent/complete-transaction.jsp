<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Thank You For Your Order</title>
    <link href="../css/base.css" rel="stylesheet" type="text/css" />
    <link href="../css/item.css" rel="stylesheet" type="text/css" />
    <link href="../css/jquery-ui.custom.css" rel="stylesheet" type="text/css"/>
    <link href="../js/plugins/reveal/reveal.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="../js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../js/plugins/validate/jquery.validate.min.js"></script>
    <script type="text/javascript" src="../js/plugins/reveal/jquery.reveal.js"></script>
	<script type="text/javascript" src="../js/gstore-jquery.js"></script>	
</head>
<body>
    <div id="page">
        <!-- Header -->
        <jsp:include page="includes/header.jsp"/>
        <!-- End of Header -->
        <div id="section">
			<jsp:include page="includes/nav-left.jsp"/>
            <section class="threecol main">
	            <div class="bluebox">
	            	<h2 class="primary-heading">Thank You</h2>
	            	<div class="spacer"></div>
	            		<p>Your transaction has been completed and we are processing your order.</p>
	            		<p>Your order number is: <span style="font-weight: bold;">${orderNumber}</span> </p>
	            	<div class="spacer"></div>
				</div>
            </section>
            <jsp:include page="includes/nav-right.jsp"/>
        </div>
        
        <jsp:include page="includes/footer.jsp"/>
    </div>
    
	<div class="reveal-modal" id="delete-modal">
	    <p>Are you sure you want to delete this item from your cart?</p>
	    <div class="formsubmit">
	        <a class="red-btn left" id="delete-item-row" href="javascript:void(0)" style="margin-right:10px;" >Yes</a>
	        <a class="green-btn left close" href="javascript:void(0)">No, don't delete</a>
	    </div>
	</div>    
    
</body>
</html>