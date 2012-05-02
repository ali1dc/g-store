var CartItem = {};
CartItem.unitPrice = 0.0;
CartItem.itemRow = {};
var GStoreGlobal = {};
GStoreGlobal.ajaxHadlerUrl = "/g-store/ajax-handler";

$(document).ready(function () {
	
	jQuery.validator.addMethod("phoneUS", function(phone_number, element) {
	    phone_number = phone_number.replace(/\s+/g, ""); 
		return this.optional(element) || phone_number.length > 9 &&
			phone_number.match(/^(1-?)?(\([2-9]\d{2}\)|[2-9]\d{2})-?[2-9]\d{2}-?\d{4}$/);
	}, "Please specify a valid phone number.");
	
	jQuery.validator.addMethod("postalcode", function(postalcode, element) {
		return this.optional(element) || postalcode.match(/(^\d{5}(-\d{4})?$)/);
	}, "Please specify a valid zip code.");
	
	$("form").validate({
		rules: {
			phone: {
				required: true,
				phoneUS: true
			},
			postalcode: {
				postalcode: true
			}
		}
	});

	/*********** Shopping Cart ****************/
	$(".add-to-cart").click(function () {
		if($(this).hasClass("loading-btn")) {
			return;
		}
		$(this).addClass("loading-btn");
		var params = {action: "add-to-cart", id: this.id };
		$("#nav-shopping-cart").load(GStoreGlobal.ajaxHadlerUrl, params, doHighlight);
	});
	
	$(".show-item-cart").live("click", function () {
		$(".ui-tabs-nav").hide();
		var name = $(this).text();
		var price = $(this).closest("li").find(".item-price").text();
		price = price.replace("(", "").replace(")","");
		price = price.replace("$","");
		price = parseFloat(price);
		var qty = $(this).closest("li").find(".item-quantity").text();
		if(qty == ""){
			qty = 1; 
		} else {
			qty = qty.replace("(QTY: ", "").replace(")", "");
		}
		var itemTotal = price = price * qty;
		CartItem.unitPrice = price / qty;
		
		$("#item-name-modal").text(name);	
		$("#item-quantity-modal").val(qty);	
		$("#item-price-modal").text("$" + CartItem.unitPrice.toFixed(2));
		$("#item-total-modal").text("$" + itemTotal.toFixed(2));		
		
	});
	
	$("#item-quantity-modal").change(function (data) {
		var qty = $(this).val();
		if($.isNumeric(qty)) {
			var totalPrice = CartItem.unitPrice * qty;
			$("#item-total-modal").text("$" + totalPrice.toFixed(2));
			doGeneralHighlights("#item-total-modal", 2000);
		} else {
			if(qty == "") {
				$(this).after("&nbsp;<span style='color:red'>Quantity is required!</span>");
			}
			$("#item-total-modal").html("<span style='color:red'>Quantity must be a number!</span>");
			$("#item-quantity-modal").focus();
		}
	});
	
	$("#update-item-cart").click(function () {
		var item = $("#item-name-modal").text();
		var qty = $("#item-quantity-modal").val();
		var params = {action: "update-cart-item", productName: item, quantity: qty };
		$(".reveal-modal").hideModal();
		$(".ui-tabs-nav").show();
		$("#nav-shopping-cart").load(GStoreGlobal.ajaxHadlerUrl, params, doHighlight);
	});
	
	$("#delete-item-cart").click(function () {
		var item = $("#item-name-modal").text();
		var params = {action: "delete-cart-item", productName: item };
		$(".reveal-modal").hideModal();
		$(".ui-tabs-nav").show();
		$("#nav-shopping-cart").load(GStoreGlobal.ajaxHadlerUrl, params, doHighlight);
	});
	
	$(".cancel-modal").click(function () {
		$(".ui-tabs-nav").show();
	});
	
	/*********** Order Summary *********/
	
	$(".delete-item-row").live("click", function () {
		CartItem.itemRow = $(this).closest("tr");
	});
	
	$("#delete-item-row").live("click", function () {
		var item = CartItem.itemRow.find(".item-row").text();
		var price = CartItem.itemRow.find(".price-row").text();
		var totalPrice = $("#order-summary-table .total-price").text();
		var subTotalPrice = $("#order-summary-table .sub-total-price").text();
		var shipping = $("#order-summary-table .shipping-price").text();
		
		price = getFloatFormat(price);
		subTotalPrice = getFloatFormat(subTotalPrice);
		subTotalPrice = subTotalPrice - price;
		shipping = getFloatFormat(shipping);
		
		var tax = subTotalPrice * 5 / 100;
		totalPrice = subTotalPrice + tax + shipping;
		
		$("#order-summary-table .sub-total-price").text(getCurrencyFormat(subTotalPrice));
		$("#order-summary-table .tax-price").text(getCurrencyFormat(tax));
		$("#order-summary-table .total-price").text(getCurrencyFormat(totalPrice));

		$(".reveal-modal").hideModal();
		var params = {action: "delete-cart-item-summery", productName: item };
		$.ajax({
			url: GStoreGlobal.ajaxHadlerUrl,
			success: function () {
				CartItem.itemRow.remove();
				doGeneralHighlights("#order-summary-table .total-price", 2000);
				if($("#order-summary-table tbody").html().trim() == "") {// removing everything
					$("#order-summary").html("<p>Your cart is empty. <a href='./index.jsp'>Click here</a> to start over!");
				}
			},
			data: params
		});		
	});
	
	$(".update-item-row").click(function () {
		var row = $(this).closest("tr");
		var item = row.find(".item-row").text();
		var qty = row.find(".quantity-row-input").val();
		var price = row.find(".price-row").text();
		var totalPrice = $("#order-summary-table .total-price").text();
		if (qty == "0") {
			// delete the item if qty == 0
			CartItem.itemRow = row;
			$('.reveal-modal').reveal({
			     animation: 'fadeAndPop',
			     animationspeed: 300,                     
			     closeonbackgroundclick: true,            
			     dismissmodalclass: 'close'  
			});
		} else if (!$.isNumeric(qty)) {
			// make it red!
		} else {
			// update
			price = price.replace("$", "");
			totalPrice = totalPrice.replace("$", "");
			var params = {action: "update-cart-item-summery", productName: item, quantity: qty };
			
			$.ajax({
				url: GStoreGlobal.ajaxHadlerUrl,
				success: function (data) {
					row.find(".price-row").text(getCurrencyFormat(data.price));
					$("#order-summary-table .sub-total-price").text(getCurrencyFormat(data.subTotalPrice));
					$("#order-summary-table .tax-price").text(getCurrencyFormat(data.tax));
					$("#order-summary-table .shipping-price").text(getCurrencyFormat(data.shipping));
					$("#order-summary-table .total-price").text(getCurrencyFormat(data.totalPrice));
					doGeneralHighlights("#order-summary-table .total-price", 3000);
				},
				data: params,
				cache: false
			});
		}
	});
	
	
	/********** Checkout ************/
	$("#address-populator").click(function(){
		var params = {action: "get-shipping-address" };
		$.ajax({
			url: GStoreGlobal.ajaxHadlerUrl,
			success: function (data) {
				if(data) {
					$("#billing-name").val(data.recipient);
					$("#billing-address1").val(data.address1);
					$("#billing-address2").val(data.address2);
					$("#billing-city").val(data.city);
					$("#billing-state").val(data.state);
					$("#billing-zip").val(data.postalCode);
					$("#billing-phone").val(data.phone);
				}
			},
			data: params,
			cache: false
		});
	});
	
	
});


function shoppigCartRowHandler(data) {
	alert(data.totalPrice);
	doGeneralHighlights("#order-summary-table .total-price", 2000);
	if($("#order-summary-table tbody").html().trim() == "") {// removing everything
		$("#order-summary").html("<p>Your cart is empty. <a href='./index.jsp'>Click here</a> to start over!");
	}
}


function showShoppingCart(data) {
	$("#nav-shopping-cart").html(data);
}

function doHighlight () {
	$(".add-to-cart").removeClass("loading-btn");	
	$(".highlight").effect("highlight", {}, 5000);
}
function doGeneralHighlights (selector, speed) {
	$(selector).effect("highlight", {}, speed);
}

function getCurrencyFormat(money) {
	money = $.trim(money);
	money = parseFloat(money);
	return "$" + money.toFixed(2);
}
function getFloatFormat(money) {
	money = money.replace("$", "");
	money = $.trim(money);
	money = parseFloat(money);
	return money;
}
