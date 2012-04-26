/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Checkout;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author James
 */
public class BillingServlet extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String referer = request.getHeader("Referer");
        session.setAttribute("Referer", referer);
        
        String billingUrl = "/billing.jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(billingUrl);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
