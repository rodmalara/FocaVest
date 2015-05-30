/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unicamp.ft.controller;

/**
 *
 * @author rodrigo
 */
import br.unicamp.ft.dao.EventoDAO;
import br.unicamp.ft.dao.PremiacaoDAO;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PremioController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String LIST_BRINDES = "/Establishment/listaPremios.jsp";
    private PremiacaoDAO dao;
 
    public PremioController() {
        super();
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");
        EstabelecimentoTO estabelecimentoTO = (EstabelecimentoTO) request.getSession().getAttribute("establishment_data");
      
 
       if (action.equalsIgnoreCase("delete")){
            String userId = request.getParameter("userId");
            dao = new PremiacaoDAO();
            dao.remove(Integer.parseInt(userId));
            forward = LIST_BRINDES;
            request.setAttribute("users", dao.selectListPremiacaoByEstabelecimentoID(estabelecimentoTO.getEstabelecimentoID()));    
        } /*else if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            String userId = request.getParameter("userId");
            User user = dao.getUserById(userId);
            request.setAttribute("user", user);
        } */else if (action.equalsIgnoreCase("listUser")){
            forward = LIST_BRINDES;
            dao = new PremiacaoDAO();
            request.setAttribute("users", dao.selectListPremiacaoByEstabelecimentoID(estabelecimentoTO.getEstabelecimentoID()));
        }
 
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
}
