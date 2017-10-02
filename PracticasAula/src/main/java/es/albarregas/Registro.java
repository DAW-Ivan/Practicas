/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ivan
 */
@WebServlet(name = "Registro", urlPatterns = {"/registro"})
public class Registro extends HttpServlet {

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
            
            
            Map<String,String[]> datos=request.getParameterMap();
            boolean ok=true;
            String ent;
            int dia=0;
            for (Map.Entry<String, String[]> entry : datos.entrySet()){
               ent=entry.getKey();
                for(String e:entry.getValue()){
                    if(ent.equalsIgnoreCase("nombre")||ent.equalsIgnoreCase("usuario")||ent.equalsIgnoreCase("pass")){
                        if(e==null || e.equalsIgnoreCase("")){
                            ok=false;
                        }
                    }
                    if(ent.equalsIgnoreCase("dia")){dia=Integer.parseInt(e);}
                    if(ent.equalsIgnoreCase("mes")){ 
                        switch(e){
                            case "Febrero": if(dia>28){ok=false;};
                                break;
                            case "Abril": if(dia>30){ok=false;};
                                break;
                            case "Junio": if(dia>30){ok=false;};
                                break;
                            case "Septiembre": if(dia>30){ok=false;};
                                break;
                            case "Noviembre": if(dia>30){ok=false;};
                                break;
                        }
                    }
                    
                }    
            }
            if(ok){
                int c=1;
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet Registro</title>"
                        + "<style type=\"text/css\" media=\"screen\">"
                        + "div{width:70%;margin-left:15%;text-align:center;border:1px solid blue;}"
                        + "a{text-decoration:none;}");            
                out.println("</style></head>");
                out.println("<body><div><h1>Registro satisfactorio</h1>");
                for (Map.Entry<String, String[]> entry : datos.entrySet()){
                    for(String e:entry.getValue()){
                        if(!entry.getKey().startsWith("env")){
                            switch(c){
                                case 1:out.print("<p>Nombre y Apellidos: "+e);
                                    break;
                                case 2:out.print(" "+e+"</p>");
                                    break;
                                case 3:out.print("<p>Sexo: "+e+"</p>");
                                    break;
                                case 4:out.print("<p>Fecha de nacimiento: "+e+" de ");
                                    break;
                                case 5:out.print(e+" de ");
                                    break;
                                case 6:out.print(e+"</p>");
                                    break;
                                case 7:out.print("<p>Usuario: "+e+"</p>");
                                    break;
                                case 8:out.print("<p>Constraseña: "+e+"</p>");
                                    break;
                                case 9:out.print("<p>Preferencias: "+e);
                                    break;
                                case 10:out.print(", "+e);
                                    break;
                                case 11:out.print(", "+e);
                                    break;
                                case 12:out.print(", "+e);
                                    break;
                            }
                        }
                        c++;
                    }
                }
                out.print("</p><br><br><p><a href='index.html'>Menú inicial</a></p>");
                out.println("</div></body>");
                out.println("</html>");
            }else{
                out.println("<html><head><title>Error</title>"
                        + "<style type=\"text/css\" media=\"screen\">"
                        + "body{text-align:center;}div{border:1px solid blue;padding-bottom:2%;width:70%;margin-left:15%;margin-top:5%;}"
                        + "</style>"
                        + "</head><body>"
                        + "<div><p>Errores en el registro</p>"
                        + "<input type='button' value='Volver' onclick='history.back()'>"
                        + "</div>");
                        out.print("</body></html>");
            }
            
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
