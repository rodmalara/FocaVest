/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.controller;

import br.unicamp.ft.dao.EstabelecimentoDAO;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Matheus
 */
@WebServlet(name = "EditEstabelecimentoServlet", urlPatterns = {"/Establishment/EditEstabelecimentoServlet"})
public class EditEstabelecimentoServlet extends HttpServlet {

    EstabelecimentoTO estabelecimentoTO;
    
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
        this.estabelecimentoTO = (EstabelecimentoTO) request.getSession().getAttribute("establishment_data");
        
        request.setAttribute("estabelecimento", estabelecimentoTO);
        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/Establishment/editarEstabelecimento.jsp");
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
        processRequest(request, response);
        this.estabelecimentoTO.setCnpj(Integer.parseInt(request.getParameter("cnpj")));
        this.estabelecimentoTO.setEmail(request.getParameter("email"));
        this.estabelecimentoTO.setNome(request.getParameter("nome"));
        this.estabelecimentoTO.setSenha(request.getParameter("senha"));
        this.estabelecimentoTO.setTelefone(request.getParameter("telefone"));
    
        new EstabelecimentoDAO().updateEstabelecimento(estabelecimentoTO);
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
