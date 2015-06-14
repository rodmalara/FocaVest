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

import br.unicamp.ft.commons.util.UploadImageHandler;
import br.unicamp.ft.dao.EstabelecimentoDAO;
import br.unicamp.ft.dao.PremiacaoDAO;
import br.unicamp.ft.transferobjects.EstabelecimentoTO;
import br.unicamp.ft.transferobjects.PremiacaoTO;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.io.FilenameUtils;

@WebServlet(name = "InsertPremioServlet", urlPatterns = "/Establishment/InsertPremioServlet")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,
                 maxFileSize = 1024*1024*10,
                 maxRequestSize = 1024*1024*50)
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
        
        EstabelecimentoTO estabelecimentoTO = (EstabelecimentoTO) request.getSession().getAttribute("establishment_data");
        
        String appPath = "/Users/rodrigo/GitHub/FocaVest/Fotos";
        String SAVE_DIR = String.valueOf(estabelecimentoTO.getNome().hashCode());
        String savePath = appPath + File.separator + SAVE_DIR;    
        
        String strDespesasDataInicio = request.getParameter("dataInicio");  
        String strDespesasDataFinal = request.getParameter("dataFinal"); 
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");  
        
        File file = new File(savePath);
        
        if(!file.exists())
            file.mkdir();
        
        for(Part part : request.getParts()){
            part.write(savePath + File.separator + extractFileName(part));
        }
                
        Date dataInicio, dataFinal;
       
        try {
            
            dataInicio = df.parse (strDespesasDataInicio);
            dataFinal = df.parse (strDespesasDataFinal);
        
        PremiacaoTO premiacaoTO = new PremiacaoTO(
                estabelecimentoTO,
                Integer.parseInt(request.getParameter("pontos")),
                request.getParameter("nome"),
                dataInicio,
                dataFinal,
                ""
        );
        new PremiacaoDAO().insertPremiacao(premiacaoTO);
    
        } catch (Exception ex) {
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

    private String extractFileName(Part part) {
    String contentDisp = part.getHeader("content-disposition");
    String[] items = contentDisp.split(";");
    for (String s : items) {
        if (s.trim().startsWith("filename")) {
            return s.substring(s.indexOf("=") + 2, s.length()-1);
        }
    }
    return "";
}
    
}
