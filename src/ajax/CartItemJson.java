package ajax;

import java.io.Serializable;

@SuppressWarnings("serial")
public class CartItemJson implements Serializable {
	private int productID;	
	private String productName;
	private int quantity;
	private double price;

	public CartItemJson () {
	}

	public CartItemJson (int productID, String pName, int quantity, double price) {
		this.productID = productID;
		this.productName = pName;
		this.quantity = quantity;
		this.price = price;
	}
	
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public String getFormattedPrice() {
		return String.format("$%,.2f", getPrice());
	}
}
