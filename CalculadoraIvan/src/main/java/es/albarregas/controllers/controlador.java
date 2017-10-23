/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import es.albarregas.beans.Calculadora;
import es.albarregas.models.Division;
import es.albarregas.models.Multiplicacion;
import es.albarregas.models.Resta;
import es.albarregas.models.Suma;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ivan
 */
@WebServlet(name = "controlador", urlPatterns = {"/controlador"})
public class controlador extends HttpServlet {

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
        doPost(request, response);
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
            throws ServletException, IOException{
        //String url;
        Calculadora calculadora=new Calculadora();
        float op1=Float.parseFloat(request.getParameter("op1"));
        calculadora.setOp1(op1);
        float op2=Float.parseFloat(request.getParameter("op2"));
        calculadora.setOp2(op2);
        String operacion=request.getParameter("operacion");
        switch (operacion){
            case "suma":
                calculadora.setResultado(new Suma().sumar(op1, op2));
                calculadora.setSigno("+");
                break;
            case "resta":
                calculadora.setResultado(new Resta().restar(op1, op2));
                calculadora.setSigno("-");
                break;
            case "multi":
                calculadora.setResultado(new Multiplicacion().multiplicar(op1, op2));
                calculadora.setSigno("x");
                break;
            case "div":
                calculadora.setResultado(new Division().dividir(op1, op2));
                calculadora.setSigno("/");
                break;
        }
        
        request.setAttribute("operacion", calculadora);
        request.getRequestDispatcher("html/resultado.jsp").forward(request, response);
        
        
    }

}
