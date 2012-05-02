<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach var="item" items="${cartItems}" varStatus="status" >
<li title="Click on edit this item">
<a style="display:inline;" href="javascript:void(0)" class="show-item-cart" data-reveal-id="show-item-modal" data-dismissmodalclass="cancel">${item.productName}</a>
<c:if test="${item.quantity > 1}"><span class="item-quantity">(QTY: ${item.quantity})</span></c:if>
<span class="item-price">(${item.formattedPrice})</span>
</li>
</c:forEach>
<c:choose>
<c:when test="${subTotalPrice > 0.0}">
	<li class="highlight" style="text-align:right"><strong>Sub Total: <fmt:formatNumber value="${subTotalPrice}" type="currency"/></strong></li>
	<li style="text-align: center"><a href="/g-store/order-summary">Proceed to Checkout</a></li>
</c:when>
<c:otherwise>
	<li class="highlight">Your Cart is Empty!</li>
</c:otherwise>
</c:choose>
