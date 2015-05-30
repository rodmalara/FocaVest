package br.unicamp.ft.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Matheus
 */

import br.unicamp.ft.dao.EstabelecimentoDAO;
import br.unicamp.ft.dao.PremiacaoDAO;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import br.unicamp.ft.transferobjects.PremiacaoTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "InsertPremioServlet", urlPatterns = "/Establishment/InsertPremioServlet")
public class InsertPremioServlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PremioServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PremioServlet at " + request.getContextPath() + "</h1>");
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
        
        String strDespesasDataInicio = request.getParameter("dataInicio");  
        String strDespesasDataFinal = request.getParameter("dataFinal");  
        DateFormat df = new SimpleDateFormat ("dd/MM/yyyy");  
        
        Date dataInicio, dataFinal;
       
        try {
            dataInicio = df.parse (strDespesasDataInicio);
            dataFinal = df.parse (strDespesasDataFinal);
        
        PremiacaoTO premiacaoTO = new PremiacaoTO(
                Integer.parseInt(request.getParameter("pontos")),
                request.getParameter("nome"),
                dataInicio,
                dataFinal              
        );
        new PremiacaoDAO().insertPremiacao(premiacaoTO);
    
        } catch (ParseException ex) {
            Logger.getLogger(InsertPremioServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
