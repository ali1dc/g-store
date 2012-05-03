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
	private static final long serialVersionUID = 1L;

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
            request.setAttribute("errorMsg",
                    "<p style='color:red;font-weight:bold;'>Please fill in all registration fields.</p>");
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login");
            dispatcher.forward(request, response);
        }
        else if (password.equals(confirmPassword) == false)
        {
            // Passwords don't match
            request.setAttribute("errorMsg",
                    "<p style='color:red;font-weight:bold;'>Your passwords didn't match.</p>");
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login");
            dispatcher.forward(request, response);
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

            // Redirect to next page.
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/order-summary");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // doPost(request, response);
    }
}
