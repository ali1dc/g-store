package lib;

import java.util.List;

public class ShoppingCartHelper {
	
    public static double calculateSubTotalPrice(List<CartItem> cartItems) {
        double totalPrice = 0.0;
		if (cartItems != null) {
			for (CartItem item : cartItems) {
				totalPrice += item.getPrice();
			}
		}
		return totalPrice;
    }
    
    public static double calculateTotalchargeOnCard(List<CartItem> cartItems) {
        double subTotalPrice = calculateSubTotalPrice(cartItems);
		double tax = subTotalPrice * 5 / 100;
		double shipping = 5.0;
		double totalPrice = subTotalPrice + tax + shipping;
		return totalPrice;
    }
    
    public static double calculateTax (List<CartItem> cartItems) {
    	double subTotalPrice = calculateSubTotalPrice(cartItems);
    	double tax = subTotalPrice * 5 / 100;
    	return tax;
    }

    public static double calculateShipping(List<CartItem> cartItems) {
    	// return $5.00 flat rate shipping and handling.  
    	return 5.0;
    }

}
