<%-- 
    Document   : nav-shopping-cart.jsp
    Ali J     : Add this jsp as an include, after <section> tag, for having the shopping card in right navigation bar  
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="lib.*"%>

<%
	List<CartItem> cartItems = (ArrayList<CartItem>)request.getSession().getAttribute("shoppingCartItems"); 
    if(cartItems == null) {
    	cartItems = new ArrayList<CartItem>();
    }
    double subTotalPrice = ShoppingCartHelper.calculateSubTotalPrice(cartItems);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<aside id="secondary-content" class="right sidebar">
	<div>
	    <h2 class="primary-nav-heading">
	    	Cart Information:
	    </h2>
		<ul id="nav-shopping-cart" class="nav-links">
		<% if(cartItems.size() == 0) { %>
			<li>Your Cart is Empty!</li>
		<% } else { %>
			<% for (CartItem item : cartItems) { %>
				<li title="Click on edit this item"><a style="display:inline;" id="item-<%=item.getProductID()%>" class="show-item-cart" 
					href="javascript:void(0)" data-reveal-id="show-item-modal" data-dismissmodalclass="cancel">
					<%=item.getProductName().trim() %></a>
				<% if(item.getQuantity() > 1) { %>
					<span class="item-quantity">(QTY: <%=item.getQuantity() %>)</span>
				<% } %>
					<span class="item-price">(<%=item.getFormattedPrice() %>)</span>
				</li>
			<% } %>
			<% if(subTotalPrice > 0) { %>
			<li style="text-align:right"><strong>Sub Total: <%= String.format("$%,.2f", subTotalPrice) %></strong></li>
			<li style="text-align: center"><a href="/g-store/order-summary">Proceed to Checkout</a></li>
			<% } %>
		<% } %>
		</ul>
	</div>
</aside>
<div id="show-item-modal" class="reveal-modal">
	<h3 class="primary-heading" style="text-align: center;">Updating Your Shopping Cart</h3>
	<ol>
		<li>				
			<label>Product Name:</label>
			<p id="item-name-modal">this is the name!</p>
		</li>
		<li>
			<label for="item-quantity-modal" class="required">Quantity:<span>&nbsp;(required)</span></label>
			<input type="text" id="item-quantity-modal" class="required" />
		</li>
		<li>
			<label>Unit Price:</label>
			<p id="item-price-modal"></p>
		</li>
		<li>
			<label>Item Sub Total Price:</label>
			<p id="item-total-modal"></p>
		</li>
		
	</ol>
    <div class="formsubmit" style="padding-left:120px">
    	<table>
    		<tr>
    			<td><a href="javascript:void(0)" id="update-item-cart" class="green-btn left">Update this Item</a></td>
    			<td><a href="javascript:void(0)" id="delete-item-cart" class="red-btn left">Delete from Cart</a></td>
    			<td><a href="javascript:void(0)" class="cancel cancel-modal">Cancel</a></td>
			</tr>
		</table>
	</div>
</div>


