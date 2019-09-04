/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Datos.AccesoDatos;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author david
 */
@WebServlet(name = "Loguearse", urlPatterns = {"/Loguearse"})
public class Loguearse extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        HttpSession sesion = request.getSession(true);
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        ArrayList<String> datos = new AccesoDatos().login(clave, usuario);
        if (datos.size()>0) {
          
             
            sesion.setAttribute("id",datos.get(0));
            sesion.setAttribute("tipo",datos.get(1));
            sesion.setAttribute("nombre_apellido",datos.get(2)+" "+ datos.get(3));
           
            
            
           boolean aux =  new AccesoDatos().CambiarClave(datos.get(0));
           
            if(aux == false)
            {               
                response.sendRedirect("form-user-cambiar-clave.jsp");
            }else
            {
//                if (datos.get(1).equals("CA"))
                response.sendRedirect("home.jsp");
//                if (datos.get(1).equals("CP"))
//                response.sendRedirect("form-tera-home.jsp");
//                if (datos.get(1).equals("CT"))
//                response.sendRedirect("form-tera-home.jsp");
            }
               
             
            
                       
            
            
        } else {
            response.sendRedirect("Login.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
