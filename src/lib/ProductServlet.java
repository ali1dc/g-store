/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 
import javax.servlet.http.HttpSession;

/**
 * 
 * @author Diarmuid
 */
public class ProductServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
        HttpSession session = request.getSession();
        User currentUser;      
        
        if(session.getAttribute("currentUser")==null){
            currentUser = new User();
        }else{
            currentUser = (User) session.getAttribute("currentUser");
        }
        String urlToUse = "";
        String productURL = "/product.jsp";
        
        if(request.getParameter("productID")!=null){
            String productID = request.getParameter("productID");
            urlToUse = productURL; 
            productID = productID.trim();
            int id = Integer.parseInt(productID);
            ProductBean productBean = new ProductBean(id);
            Product p = productBean.getProduct();
            request.setAttribute("product", p);
            request.setAttribute("considerOne", productBean.getFirstProductToConsider());
            request.setAttribute("considerTwo", productBean.getSecondProductToConsider());
            request.setAttribute("considerThree", productBean.getThirdProductToConsider());
            request.setAttribute("considerFour", productBean.getFourthProductToConsider());
            request.setAttribute("considerFive", productBean.getFifthProductToConsider());
        }
        
        RequestDispatcher dispatcher = 
                getServletContext().getRequestDispatcher(urlToUse);
        dispatcher.forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
