/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import java.io.IOException;
import java.net.URL;
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
        
        //URL refererUrl = new URL(request.getHeader("Referer"));
        //session.setAttribute("sourceUrl", refererUrl);
        
        String url = "/login.jsp";
        
        if (loggedIn != null && loggedIn == true)
        {
            // User is logged in. Assumed to be checking out
            //url = refererUrl.getPath();
            url = "/order-summary";
            
            User user = (User) session.getAttribute("user");
            if (user != null)
            {
                //TrackingCookie.setCookie(response, user.getEmail());
            }
        }
        else
        {
            //TrackingCookie.getCookie(request);
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
