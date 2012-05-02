/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bchan
 */
@WebServlet(name = "ControllerServlet",
loadOnStartup = 1,
urlPatterns = {"/category",
    "/product",
    "/addToCart",
    "/viewCart",
    "/updateCart",
    "/checkout",
    "/purchase"})
public class ControllerServlet extends HttpServlet {

    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        HttpSession session = request.getSession();
        User currentUser;

        if (session.getAttribute("currentUser") == null) {
            currentUser = new User();
        } else {
            currentUser = (User) session.getAttribute("currentUser");
        }

        // end
        String userPath = request.getServletPath();

        // use RequestDispatcher to forward request internally
        String url = userPath + ".jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}
