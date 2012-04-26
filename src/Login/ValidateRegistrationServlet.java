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
import lib.User;

/**
 *
 * @author James
 */
public class ValidateRegistrationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User user = new User();

        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String confirmEmail = request.getParameter("confirmEmail");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        if (email.equals("") || password.equals("") || firstName.equals("") || lastName.equals(""))
        {
            // Missing information
            PrintWriter out = response.getWriter();
            out.println("<h1>Please fill in first name, last name, email, and password.</h1>");
            out.close();
        }
        else if (email.equals(confirmEmail) == false)
        {
            // Passwords don't match
            PrintWriter out = response.getWriter();
            out.println("<h1>You entered two different email addresses.</h1>");
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
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            user.setPassword(password);

            session.setAttribute("user", user);

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
