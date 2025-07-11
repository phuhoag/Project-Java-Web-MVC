package com.example.Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class LoginProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Khi truy cập trực tiếp bằng GET, hiển thị form đăng nhập
        RequestDispatcher dispatcher = request.getRequestDispatcher("/LoginProduct.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("admin".equals(username) && "123".equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);


            response.sendRedirect(request.getContextPath() + "/products");
        } else {
            request.setAttribute("error", "true");
            RequestDispatcher rd = request.getRequestDispatcher("/LoginProduct.jsp");
            rd.forward(request, response);
        }

    }
}
