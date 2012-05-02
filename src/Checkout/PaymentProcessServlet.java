package Checkout;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lib.*;

/**
 * Servlet implementation class PaymentProcess
 */
public class PaymentProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestResponseProcess(request, response);;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestResponseProcess(request, response);
	}

	@SuppressWarnings("unchecked")
	private void requestResponseProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		String outputPage = "";	
		response.setContentType("text/html");
		RequestDispatcher dispatcher;
		
		HttpSession session = request.getSession();
		User user = null;
        if(session.getAttribute("user") != null) {
        	synchronized(session) {
        		user = (User) session.getAttribute("user");
        	}
        }
        if(user == null) {
        	// for local test:
        	user = new User();
        	user.setEmail("ali1dc@gmail.com");
        	//response.sendRedirect("/login.jsp");
        }
		
		Address billingAddress = CheckoutHelper.getInstance().getBillingAddress(request);
		if (billingAddress == null) {
			outputPage = "/payment-process.jsp";		
	        dispatcher = request.getRequestDispatcher(outputPage);
			dispatcher.include(request, response);
			return;
		}
		
		Address shAddress=null;
		if(session.getAttribute("shippingAddress") != null )
		synchronized(session) {
			shAddress = (Address) session.getAttribute("shippingAddress");
		}
		// save shipping address
		if (shAddress != null) {
			shAddress.setEmail(user.getEmail());
			shAddress = GStoreDataAccess.getInstance().saveAddress(shAddress);
		}
		// save billing address
		billingAddress.setEmail(user.getEmail());
		billingAddress = GStoreDataAccess.getInstance().saveAddress(billingAddress);
		
		String nameOnCard = request.getParameter("billing-name");
		String cardType = request.getParameter("card-type");
		String cardNumber = request.getParameter("card-number");
		String strExpMonth = request.getParameter("exp_month");
		String strExpYear = request.getParameter("exp_year");
		String cvvCode = request.getParameter("cvv-code");
		int expMonth = Integer.parseInt(strExpMonth);
		int expYear = Integer.parseInt(strExpYear);
		
		String last4Number = "";
		if(cardNumber != null && !cardNumber.isEmpty() && cardNumber.length() > 4) {
			last4Number = cardNumber.substring(cardNumber.length() - 4);
		}
		

		List<CartItem> cartItems = null; 
		if(session.getAttribute("shoppingCartItems") != null )
		synchronized(session) {
			cartItems = (ArrayList<CartItem>)session.getAttribute("shoppingCartItems"); 
		}
	    double totalPrice = ShoppingCartHelper.calculateTotalchargeOnCard(cartItems);
	    
		// save order info and transaction
		String orderNumber = GStoreDataAccess.getInstance().saveTransaction(session.getId(), user.getEmail(), shAddress.getAddressID(), 
				billingAddress.getAddressID(), nameOnCard, cardType, last4Number, expMonth, expYear, cvvCode, totalPrice);
		
		// null all sessions
		synchronized(session) {
			session.removeAttribute("shoppingCartItems");
			session.removeAttribute("shippingAddress");
			
		}
		request.setAttribute("orderNumber", orderNumber);
		outputPage = "/complete-transaction.jsp";		
        dispatcher = request.getRequestDispatcher(outputPage);
		dispatcher.include(request, response);		
		//response.sendRedirect("complete");
	}
}
