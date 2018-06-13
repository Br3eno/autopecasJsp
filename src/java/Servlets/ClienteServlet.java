/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import dao.ClienteDao;
import entities.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Breno
 */
@WebServlet(name = "CadastraCliente", urlPatterns = {"/cliente"})
public class ClienteServlet extends HttpServlet {

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
            out.println("<title>Servlet CadastraCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CadastraCliente at " + request.getContextPath() + "</h1>");
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
        ClienteDao cDao = new ClienteDao();
        Cliente cliente = new Cliente();
        List<Cliente> clientes = new ArrayList<>();
        
        clientes = cDao.listClientes();
        
        request.setAttribute("listaClientes", clientes);
        request.getRequestDispatcher("cliente.jsp").forward(request, response);
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
        
        ClienteDao cDao = new ClienteDao();
        Cliente cliente = new Cliente();
        
        cliente.setPessoa(request.getParameter("pessoa"));
        cliente.setNome(request.getParameter("nome"));
        cliente.setApelido(request.getParameter("fantasia"));
        cliente.setDoc_unico(request.getParameter("cpf_cnpj"));
        cliente.setRegistro(request.getParameter("rg_ie"));
        cliente.setSexo(request.getParameter("gender"));
        cliente.setData_nascimento(request.getParameter("data_nasc"));
        cDao.criaCliente(cliente);
        
        response.sendRedirect("cliente");

        
    }
    
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int idCliente = Integer.parseInt(request.getParameter("id"));
        ClienteDao cDao = new ClienteDao();
        response.setContentType("application/json");
        Boolean cDelete = cDao.deleteClienteById(idCliente);
        String controle = cDelete == true ? "1" : "0";
        
        /*JSON*/
        String json =  toJson(cDelete);
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
        
    }
    
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int idCliente = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String reg = request.getParameter("reg");
    }
    
    private String toJson(boolean cDelete) throws IOException{
        String str;
        JsonObjectBuilder json = Json.createObjectBuilder()
                .add("status", cDelete);
        JsonObject jsonObject = json.build();
        try(Writer writer = new StringWriter()) {
        Json.createWriter(writer).write(jsonObject);
        str = writer.toString();
        return str;
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
