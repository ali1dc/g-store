package lib;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OrderSummary
 */
public class OrderSummary extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	@SuppressWarnings("unchecked")
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<CartItem> cartItems;
		if(session.getAttribute("shoppingCartItems") != null) {
			String outputPage = "/order-summary.jsp";
			synchronized(session) {
				cartItems = (ArrayList<CartItem>)session.getAttribute("shoppingCartItems");
			}
			double subTotalPrice = ShoppingCartHelper.calculateSubTotalPrice(cartItems);
			
			double tax = ShoppingCartHelper.calculateTax(cartItems);
			double shipping = ShoppingCartHelper.calculateShipping(cartItems);
			double totalPrice = ShoppingCartHelper.calculateTotalchargeOnCard(cartItems);

			request.setAttribute("cartItems", cartItems);
			
	        request.setAttribute("formattedSubTotal", String.format("$%,.2f", subTotalPrice));
	        request.setAttribute("formattedTax", String.format("$%,.2f", tax));
	        request.setAttribute("formattedShipping", String.format("$%,.2f", shipping));
	        request.setAttribute("formattedTotalPrice", String.format("$%,.2f", totalPrice));
	        response.setContentType("text/html");
	        RequestDispatcher dispatcher = request.getRequestDispatcher(outputPage);
			dispatcher.include(request, response);			
		} 
		else {
			// no shopping cart session so go to index page
			response.sendRedirect("/g-store/index.jsp");
		}
	}
}
