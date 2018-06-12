/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import dao.ProdutoDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Breno
 */
@WebServlet(name = "Produto", urlPatterns = {"/produto"})
public class Produto extends HttpServlet {

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
            out.println("<title>Servlet Produto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Produto at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    private entities.Produto preparaProduto(HttpServletRequest request){
        entities.Produto produto = new entities.Produto();
        produto.setName(request.getParameter("nome"));
        produto.setDescricao(request.getParameter("desc"));
        produto.setMarca(request.getParameter("marca"));
        produto.setGrupo(request.getParameter("grupo"));
        produto.setSubgrupo(request.getParameter("subgrupo"));
        produto.setCodigo( Integer.parseInt(request.getParameter("codigo")));
        produto.setCodigoFabricante(Integer.parseInt(request.getParameter("codfabricante")));
        produto.setNcm(request.getParameter("ncm"));
        produto.setPeso(request.getParameter("peso"));
        produto.setAcrescimo(request.getParameter("acrescimo"));
        produto.setCusto(request.getParameter("custo"));
        
        return produto;
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
        ProdutoDao pDao = new ProdutoDao();
        entities.Produto produto = new entities.Produto();
        
        produto = this.preparaProduto(request);
        
        pDao.cadastraCliente(produto);
        
        response.sendRedirect("produto.jsp");
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Create(Post), List(Get), Update(Put) and Delete(delete) Produtos Like a model";
    }// </editor-fold>

}
