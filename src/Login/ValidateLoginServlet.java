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
public class ValidateLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        String email = request.getParameter("j_username");
        String password = request.getParameter("j_password");
        
        // Find user in database

        // Until we have a working database, test request credentials against session credentials
        User user = (User)session.getAttribute("user");

        if ((user != null) &&
            (user.getFirstName().equals("") == false) &&
            (email.equals(user.getEmail()) == true) &&
            (password.equals(user.getPassword()) == true))
        {
            // Credentials match
            RegistrationUIBean regUI = (RegistrationUIBean)session.getAttribute("regUI");
            String name = user.getFirstName();
            regUI.setLoginMsg(name);

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/");
            dispatcher.forward(request, response);
        }
        else
        {
            // Credentials don't match
            PrintWriter out = response.getWriter();
            out.println("<h1>Invalid log in creditials.</h1>");
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // doPost(request, response);
    }
}
