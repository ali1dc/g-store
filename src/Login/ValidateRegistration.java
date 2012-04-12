/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import lib.*;

/**
 *
 * @author James
 */
public class ValidateRegistration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        User user = new User();
        Address address = new Address();

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        
        if (email.equals("") || password.equals("") || confirmPassword.equals("") || firstName.equals("") || lastName.equals(""))
        {
            // Missing information
            PrintWriter out = response.getWriter();
            out.println("<h1>Please fill in first name, last name, email, and password.</h1>");
            out.close();
        }
        else if (password.equals(confirmPassword) == false)
        {
            // Passwords don't match
            PrintWriter out = response.getWriter();
            out.println("<h1>You entered two different passwords.</h1>");
            out.close();
        }
        else
        {
            String phone = request.getParameter("telephone");
            String address1 = request.getParameter("address1");
            String address2 = request.getParameter("address2");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String postalCode = request.getParameter("zip");

            user.setEmail(email);
            user.setPassword(password);
            user.setFirstName(firstName);
            user.setLastName(lastName);
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
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // doPost(request, response);
    }
}
