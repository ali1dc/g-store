package Checkout;

import javax.servlet.http.HttpServletRequest;
import lib.*;

public class CheckoutHelper {
	private static CheckoutHelper helper;
	
	private CheckoutHelper() { }
	
    public static CheckoutHelper getInstance(){
        if(helper==null){
        	helper = new CheckoutHelper();
        }
        return helper;
    }
    
    public Address getShippingAddress(HttpServletRequest request) {
		String name = request.getParameter("shipping-name");
		String address1 = request.getParameter("shipping-address1");
		String address2 = request.getParameter("shipping-address2");
		String city = request.getParameter("shipping-city");
		String state = request.getParameter("shipping-state");
		String zip = request.getParameter("shipping-zip");
		String phone = request.getParameter("shipping-phone");
		if(address1 == null || address1.isEmpty())
		{
			return null;
		}
		Address address = new Address();
		address.setRecipient(name);
		address.setAddress1(address1);
		address.setAddress2(address2);
		address.setCity(city);
		address.setState(state);
		address.setPostalCode(zip);
		address.setPhone(phone);
		return address;
    }
    
    public Address getBillingAddress(HttpServletRequest request) {
		String name = request.getParameter("billing-name");
		String address1 = request.getParameter("billing-address1");
		String address2 = request.getParameter("billing-address2");
		String city = request.getParameter("billing-city");
		String state = request.getParameter("billing-state");
		String zip = request.getParameter("billing-zip");
		String phone = request.getParameter("billing-phone");
		if(address1 == null || address1.isEmpty())
		{
			return null;
		}
		Address address = new Address();
		address.setRecipient(name);
		address.setAddress1(address1);
		address.setAddress2(address2);
		address.setCity(city);
		address.setState(state);
		address.setPostalCode(zip);
		address.setPhone(phone);
		return address;
    }
}
