/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ivan
 */
@WebServlet(name = "FComplejo", urlPatterns = {"/fcomplejo"})
public class FComplejo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @param correcto
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response,boolean correcto)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Salida</title>");
        out.println("<style type=\"text/css\" media=\"screen\">body{text-align: center;font-size:1.5em;}div{border: 1px solid black;width: 40%;margin-left: 30%;}</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div id='contenido'>");
        out.println("<h2>Datos introducidos en el formulario</h2>");
        if (!correcto) {
            out.println("<p>No se han introducido datos</p>");
        } else {
            Map parametros=request.getParameterMap();
            Set s=parametros.entrySet();
            Iterator it=s.iterator();
            while (it.hasNext()) {
                Map.Entry<String,String[]> entry = (Map.Entry<String,String[]>)it.next();
               
                String key             = entry.getKey();
                String[] value         = entry.getValue();
                if(!key.startsWith("env")){
                    out.println(key+": ");
 
                    if(value.length>1){    
                        for (int i = 0; i < value.length; i++) {
                            out.println("<li>" + value[i].toString() + "</li><br>");
                        }
                    }else{
                        out.println(value[0].toString()+"<br>");
                    }
                } 
                
 
            }
        }
        out.print("<p><a href='index.html'>Men&uacute; inicial</a></p>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");
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
        boolean correcto=false;
        processRequest(request, response, correcto);
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
        boolean correcto=true;
        processRequest(request, response, correcto);
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
