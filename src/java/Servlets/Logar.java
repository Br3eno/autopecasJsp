/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.UserDao;

/**
 *
 * @author internet
 */
@WebServlet(name = "Logar", urlPatterns = {"/Logar"})
public class Logar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("cliente.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String login = request.getParameter("user");
            String senha = request.getParameter("senha");
            UserDao user = new UserDao();
            
            HttpSession session = request.getSession();
            
            if(user.userLogin(login, senha)){
                response.sendRedirect("cliente.jsp");
                session.setAttribute("user", login);
                session.setMaxInactiveInterval(60 * 1000);
            }

//            if (login.equals("ramylson") && senha.equals("123")) {
//                response.sendRedirect("cliente.jsp");
//                session.setAttribute("user", login);
//                session.setMaxInactiveInterval(60 * 1);

             else {
                response.sendRedirect("cliente.jsp");
                session.setAttribute("user", "");
            }
        } catch (NullPointerException e) {
            response.sendRedirect("cliente.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    // DICA: https://www.javatpoint.com/servlet-http-session-login-and-logout-example
}
