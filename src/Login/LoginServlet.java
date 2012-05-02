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
        HttpSession session = request.getSession();
        Boolean loggedIn = (Boolean) session.getAttribute("loggedIn");
        //response.setParameter("jsessionid"
        
        String url = "/login.jsp";
        
        if (loggedIn != null && loggedIn == true)
        {
            // User is logged in. Assumed to be checking out
            url = "/checkout/index.html";
            User user = (User) session.getAttribute("user");
            if (user != null)
            {
                TrackingCookie.setCookie(response, user.getEmail());
            }
        }
        else
        {
            TrackingCookie.getCookie(request);
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
