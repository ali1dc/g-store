package ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import lib.*;

import org.json.JSONObject;

/**
 * Servlet implementation class AjaxServlet
 */
public class AjaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// disable browser cache for ajax call
		response.setHeader("Cache-Control", "no-cache");
	    response.setHeader("Pragma", "no-cache");		
	    
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("add-to-cart")) {
			AjaxHelper.AddItemToCartHandler(request, response);
            String outputPage = "/WEB-INF/ajax-results/cart-items.jsp";
            response.setContentType("text/html");	    	
            RequestDispatcher dispatcher = request.getRequestDispatcher(outputPage);
			dispatcher.include(request, response);
		}
		else if(action.equalsIgnoreCase("update-cart-item")) {
			AjaxHelper.updateItemQuantityHandler(request, response);
            String outputPage = "/WEB-INF/ajax-results/cart-items.jsp";
            response.setContentType("text/html");	    	
            RequestDispatcher dispatcher = request.getRequestDispatcher(outputPage);
			dispatcher.include(request, response);			
		}
		else if (action.equalsIgnoreCase("delete-cart-item")) {
			AjaxHelper.deleteItemHandler(request, response);
	        String outputPage = "/WEB-INF/ajax-results/cart-items.jsp";
	        response.setContentType("text/html");	    	
	        RequestDispatcher dispatcher = request.getRequestDispatcher(outputPage);
			dispatcher.include(request, response);		
		}
		else if (action.equalsIgnoreCase("delete-cart-item-summery")) {
			AjaxHelper.deleteItemHandler(request, response);
		}
		else if (action.equalsIgnoreCase("update-cart-item-summery")) {
			AjaxHelper.updateItemQuantityRowSummaryHandler(request, response);
            String outputPage = "/WEB-INF/ajax-results/cart-item-row-summary.jsp";
            response.setContentType("application/json");
            //response.setContentType("text/plain");	
            RequestDispatcher dispatcher = request.getRequestDispatcher(outputPage);
			dispatcher.include(request, response);			
		}
		else if (action.equalsIgnoreCase("get-shipping-address")) {
			response.setContentType("application/json");
			JSONObject jsonAddress = AjaxHelper.getShippingAddress(request, response);
			if (jsonAddress != null) {
			    PrintWriter out = response.getWriter();				
				out.print(jsonAddress);
			}
		}
	}
}
