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
import lib.GStoreDataAccess;
import lib.User;
import lib.UserRole;

/**
 *
 * @author James
 */
public class ValidateRegistrationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();

        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        if (email.equals("") || password.equals("") || firstName.equals("") || lastName.equals(""))
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
            User user = new User();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            user.setPassword(password);
            
            UserRole role = new UserRole();
            role.setEmail(email);
            role.setRoleName("customer");

            GStoreDataAccess gsda = GStoreDataAccess.getInstance();
            gsda.setUser(user);
            gsda.setRole(role);
            
            session.setAttribute("user", user);
            session.setAttribute("loggedIn", true);
            RegistrationUIBean regUI = (RegistrationUIBean)session.getAttribute("regUI");
            String name = user.getFirstName();
            regUI.setLoginMsg(name);

            TrackingCookie.setCookie(response, user.getEmail());

            // Redirect to next page.
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/checkout/index.html");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // doPost(request, response);
    }
}
