package ajax;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import lib.*;

public class AjaxHelper {
	
	public static void AddItemToCartHandler(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		int productID = Integer.parseInt(id);
        Product product = GStoreDataAccess.getInstance().getProduct(productID);
        List<CartItem> cartItems = new ArrayList<CartItem>();
	    User user = new User();
        if(session.getAttribute("user") != null) {
        	synchronized(session) {
        		user = (User) session.getAttribute("user");
        	}
        }
        // save item to db
    	cartItems = GStoreDataAccess.getInstance().saveCartItem(session.getId(), user.getEmail(), product.getProductID());
        double subTotalPrice = 0.0;
		if (cartItems != null) {
			subTotalPrice = ShoppingCartHelper.calculateSubTotalPrice(cartItems);
		}
		synchronized(session) {
			session.setAttribute("shoppingCartItems", cartItems);
		}
        request.setAttribute("cartItems", cartItems);
        //request.setAttribute("formattedSubTotalPrice", String.format("$%,.2f", subTotalPrice));
        request.setAttribute("subTotalPrice", subTotalPrice);
	}	
	
	public static void deleteItemHandler(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String productName = request.getParameter("productName");
		productName = productName.trim();
		List<CartItem> cartItems = GStoreDataAccess.getInstance().deleteCartItem(session.getId(), productName);
		synchronized(session) {
			session.setAttribute("shoppingCartItems", cartItems);
		}
		double subTotalPrice = 0.0;
		if (cartItems != null) {				
			subTotalPrice = ShoppingCartHelper.calculateSubTotalPrice(cartItems);
		}
        request.setAttribute("cartItems", cartItems);
        request.setAttribute("subTotalPrice", subTotalPrice);
	}
	
	public static void updateItemQuantityHandler(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String productName = request.getParameter("productName");
		productName = productName.trim();
		String strQTY = request.getParameter("quantity");
		int quantity = Integer.parseInt(strQTY);
		List<CartItem> cartItems = GStoreDataAccess.getInstance().updateQuantityInCartItem(session.getId(), productName, quantity);
		synchronized(session) {
			session.setAttribute("shoppingCartItems", cartItems);
		}
		double subTotalPrice = ShoppingCartHelper.calculateSubTotalPrice(cartItems);
	    request.setAttribute("cartItems", cartItems);
	    request.setAttribute("subTotalPrice", subTotalPrice);
	}
	
	public static void updateItemQuantityRowSummaryHandler(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String productName = request.getParameter("productName");
		productName = productName.trim();
		String strQTY = request.getParameter("quantity");
		int quantity = Integer.parseInt(strQTY);
		List<CartItem> cartItems = GStoreDataAccess.getInstance().updateQuantityInCartItem(session.getId(), productName, quantity);
		synchronized(session) {
			session.setAttribute("shoppingCartItems", cartItems);
		}
		double subTotalPrice = ShoppingCartHelper.calculateSubTotalPrice(cartItems);
		CartItem updatedItem = null;
		if (cartItems != null) {
			for (CartItem item : cartItems) {
				if (productName.equalsIgnoreCase(item.getProductName())) {
					updatedItem = item;
				}
			}
		}
		double tax = ShoppingCartHelper.calculateTax(cartItems);
		double totalPrice = ShoppingCartHelper.calculateTotalchargeOnCard(cartItems);
		double shipping = ShoppingCartHelper.calculateShipping(cartItems);
	    request.setAttribute("cartItem", updatedItem);
	    request.setAttribute("subTotalPrice", subTotalPrice);
	    request.setAttribute("tax", tax);
	    request.setAttribute("shipping", shipping);
	    request.setAttribute("totalPrice", totalPrice);
	}
	
	public static JSONObject getShippingAddress(HttpServletRequest request, HttpServletResponse response) {
		Address address = null;
		HttpSession session = request.getSession();
        if(session.getAttribute("shippingAddress") != null) {
        	synchronized(session) {
        		address = (Address)session.getAttribute("shippingAddress");
        	}
        }
        JSONObject jsonAddress = null;
        if (address != null) {
        	jsonAddress = new JSONObject(address);
        }
        return jsonAddress; 
	}
}
