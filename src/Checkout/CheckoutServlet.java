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
 * Servlet implementation class CheckoutServlet
 */
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	
	@SuppressWarnings("unchecked")
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// if shopping cart is null, return to index page
		HttpSession session = request.getSession();
		List<CartItem> cartItems = null;
        if(session.getAttribute("shoppingCartItems") != null) {
        	synchronized(session) {
        		cartItems = (ArrayList<CartItem>)session.getAttribute("shoppingCartItems");
        	}
        }
        if(cartItems == null) {
        	response.sendRedirect("/g-store/index.jsp");
        }
        // check user if logged in!
		User user = null;
        if(session.getAttribute("user") != null) {
        	synchronized(session) {
        		user = (User) session.getAttribute("user");
        	}
        }
        if(user == null) {
        	// for local test:
        	response.sendRedirect("/g-store/login.jsp");
        }        
		
		
		Address address = CheckoutHelper.getInstance().getShippingAddress(request);
		
		if (address == null) {
			String outputPage = "/checkout.jsp";		
	        response.setContentType("text/html");	    	
	        RequestDispatcher dispatcher = request.getRequestDispatcher(outputPage);
			dispatcher.include(request, response);			
		}
		else {
			synchronized(session) {
				session.setAttribute("shippingAddress", address);
			}			
			response.sendRedirect("payment-process");
		}
		
	}
}
