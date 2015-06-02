/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unicamp.ft.controller;

import br.unicamp.ft.dao.ConsumidorDAO;
import br.unicamp.ft.dao.EventoDAO;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import br.unicamp.ft.transferobjects.EventoTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rodrigo
 */
@WebServlet(name = "EditEventoServlet", urlPatterns = {"/Establishment/EditEventoServlet"})
public class EditEventoServlet extends HttpServlet {

    EventoTO eventoTO;
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
        
        String action = request.getParameter("action");   
        eventoTO = new EventoDAO().selectByID(Integer.parseInt(action));
        
        request.setAttribute("evento", eventoTO);
        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/Establishment/editarEvento.jsp");
        requestDispatcher.forward(request, response);
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
        String action = request.getParameter("action");
        eventoTO = new EventoDAO().selectByID(Integer.parseInt(action));
        try {
            eventoTO.setData(request.getParameter("data"));
        } catch (ParseException ex) {
            Logger.getLogger(EditEventoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        //eventoTO.setDescricao(request.getParameter("descricao"));
        eventoTO.setNome(request.getParameter("nome"));
        eventoTO.setPreco(Float.valueOf(request.getParameter("preco")));
        eventoTO.setQtdPessoa(Integer.parseInt(request.getParameter("qtdPessoa")));
        
        new EventoDAO().updateEvento(eventoTO);
        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/Establishment/home.html");
        requestDispatcher.forward(request, response); 
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
