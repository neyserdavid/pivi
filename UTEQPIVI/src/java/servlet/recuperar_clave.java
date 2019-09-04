/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Datos.AccesoDatos;
import Datos.EnviarCorreo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author david
 */
@WebServlet(name = "recuperar_clave", urlPatterns = {"/recuperar_clave"})
public class recuperar_clave extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("<!DOCTYPE html>\n");
            out.write("<html>\n");
            out.write("    <head>\n");
            out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
            out.write("        <title>JSP Page</title>\n");
            out.write("    </head>\n");
            out.write("    <body>\n");
            out.write("        ");
            String para = request.getParameter("codigo");
            
                if (new AccesoDatos().verificarUsuario(para, "correo")) {
                    String usuario = new AccesoDatos().devolverUsuario(para);
                    if (new EnviarCorreo().enviar(para, usuario)) {
                        response.sendRedirect("Login.jsp");
                    } else {
                        out.print("CORREO ELECTRONICO NO ENVIADO...");
                    }
                }
                else
                    out.print("El correo ingresado no es valido");
            
            
            out.write("\n");
            out.write("    </body>\n");
            out.write("</html>\n");
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
