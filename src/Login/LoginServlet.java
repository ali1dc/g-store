/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import java.io.IOException;
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
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String url = "/login.jsp";
        if (request.getAttribute("errorMsg") == null)
        {
            request.setAttribute("errorMsg", "");
        }
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Boolean loggedIn = (Boolean) session.getAttribute("loggedIn");
        if (user != null && loggedIn != null && loggedIn == true)
        {
            // User is logged in, so don't bother sending them to the login page.
            url = "/order-summary";
        }
        
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
