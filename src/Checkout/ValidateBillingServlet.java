/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Checkout;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import lib.Address;
import lib.User;

/**
 *
 * @author James
 */
public class ValidateBillingServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        User user = (User)session.getAttribute("user"); // Must check for null
        Address address = new Address();

        String phone = request.getParameter("telephone");
        String address1 = request.getParameter("address1");
        String address2 = request.getParameter("address2");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String postalCode = request.getParameter("zip");

        if (phone.equals("") || address1.equals("") || city.equals("") || state.equals("") || postalCode.equals(""))
        {
            // Missing information
            PrintWriter out = response.getWriter();
            out.println("<h1>Please fill in complete billing information.</h1>");
            out.close();
        }
        else
        {
            user.setPrimaryPhone(phone);

            address.setAddressOne(address1);
            address.setAddressTwo(address2);
            address.setCity(city);
            address.setState(state);
            if (postalCode != null)
            {
                //address.setPostalCode(Integer.parseInt(postalCode));
            }

            session.setAttribute("user", user);
            session.setAttribute("address", address);

            // Redirect to next page.
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/billing.jsp"); // Must correct destination page
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // doPost(request, response);
    }
}
