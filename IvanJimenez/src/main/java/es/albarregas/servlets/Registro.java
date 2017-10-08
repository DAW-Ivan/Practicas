/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.servlets;

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

    private final String[] meses = {"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"};
    private final String[] error = {"nombre","usuario","pass","fecha"};
    private final String[] pref = {"Deportes","Lectura","Cine","Viajes"};
    
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
        doPost(request,response);
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
        
        request.setCharacterEncoding("UTF-8");
        PrintWriter out= response.getWriter();
        cabecera(request,response);
        
        
        
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

 private void cabecera(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     request.setCharacterEncoding("UTF-8");
     PrintWriter out=response.getWriter();
     response.setContentType("text/html;charset=UTF-8");
     
     out.print("<!DOCTYPE html>\n" +
"<html>\n" +
"<head>\n" +
"	<meta charset=\"utf-8\">\n" +
"	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n" +
"	<title>Objetos</title>\n" +
"	<link rel=\"stylesheet\" href=\"\">\n" +
"</head>/n<body>");
}   
    
}