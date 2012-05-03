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

/**
 *
 * @author James
 */
public class ValidateLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        String email = request.getParameter("j_username");
        String password = request.getParameter("j_password");
        
        GStoreDataAccess gsda = GStoreDataAccess.getInstance();
        User user = gsda.getUser(email, password);
        
        if (user != null)
        {
            // Credentials match
            RegistrationUIBean regUI = (RegistrationUIBean)session.getAttribute("regUI");
            session.setAttribute("user", user);
            session.setAttribute("loggedIn", true);
            String name = user.getFirstName();
            regUI.setLoginMsg(name);
            session.setAttribute("regUI", regUI);
            request.setAttribute("errorMsg", "");
            
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/order-summary");
            dispatcher.forward(request, response);
        }
        else
        {
            // Credentials don't match
            request.setAttribute("errorMsg", "<p style='color:red;font-weight:bold;'>Invalid log-in credentials. Please try again.</p>");
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // doPost(request, response);
    }
}
