package com.example.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import phu.dev.dao.UserDAO;
import phu.dev.model.User;
import phu.dev.ConnectMysql.DBConnection;
import java.io.IOException;
import java.sql.Connection;
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").include(req, resp);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection conn = DBConnection.getConnection()) {
            UserDAO userDAO = new UserDAO(conn);
            User user = userDAO.checkLogin(email, password);

            if (user != null) {
                // Đăng nhập thành công
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                response.sendRedirect("home");

            } else {
                // Đăng nhập thất bại
                request.setAttribute("error", "Invalid email or password!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
