<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Order Summary</title>
    <link href="css/base.css" rel="stylesheet" type="text/css" />
    <link href="css/item.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery-ui.custom.css" rel="stylesheet" type="text/css"/>
    <link href="js/plugins/reveal/reveal.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/plugins/validate/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/plugins/reveal/jquery.reveal.js"></script>
	<script type="text/javascript" src="js/gstore-jquery.js"></script>
</head>
<body>
    <div id="page">
        <!-- Header -->
        <jsp:include page="includes/header.jsp"/>
        <!-- End of Header -->
        <div id="section">
			<jsp:include page="includes/nav-left.jsp"/>
            <section class="threecol main">
            	<form action="./checkout/checkout" method="post">
		            <div class="bluebox">
		            	<h2 class="primary-heading">Order Summary</h2>
		            	<div class="spacer"></div>
		            	<c:if test="${cartItems != null}">
			            	<div id="order-summary">
			            		<table id="order-summary-table">
			            			<thead>
			            				<tr>
			            					<th class="item-row">Your Items</th>
			            					<th class="quantity-row">Quantity</th>
			            					<th class="price-row">Price</th>
			            					<th class="update-row">Update</th>
			            					<th class="delete-row">Delete</th>
			            				</tr>
			            			</thead>
			            			<tbody>
			            				<c:forEach var="item" items="${cartItems}">
				            				<tr>
				            					<td class="item-row">${item.productName}</td>
				            					<td class="quantity-row"><input type="text" value="${item.quantity}" class="quantity-row-input" /></td>
				            					<td class="price-row">${item.formattedPrice}</td>
				            					<td class="update-row update"><a class="update-item-row" href="javascript:void(0);">Update</a></td>
				            					<td class="delete-row delete"><a class="delete delete-item-row" href="javascript:void(0);" data-dismissmodalclass="close" data-reveal-id="delete-modal">Delete</a></td>
				            				</tr>
			            				</c:forEach>
			            				<tr><td colspan="5"></td></tr>
										<tr><td class="price" colspan="5">Sub Total: <span class="sub-total-price">${formattedSubTotal}</span></td>
										<tr><th colspan="5"></th></tr>
										<tr><td colspan="5" class="price">Tax: <span class="tax-price">${formattedTax}</span></td></tr>
										<tr><td colspan="5" class="price">Shipping &amp; Handling: <span class="shipping-price">${formattedShipping}</span></td></tr>
										<tr><th colspan="5"></th></tr>
			            			</tbody>
			            			<tfoot>
			            				<tr>
			            					<td colspan="5" class="footer">Total: <span class="total-price">${formattedTotalPrice}</span></td>
			            				</tr>
			            			</tfoot>
			            		</table>
			            	</div>
		            	</c:if>
		            	<div class="spacer"></div>
						<div class="formsubmit">
							<input type="submit" id="checkout-submit" value="Proceed to Checkout" class="green-btn" style="float: right;" />
						</div>					
					</div>
				</form>
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