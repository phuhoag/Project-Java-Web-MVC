package com.example.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import phu.dev.dao.ProductDAO;
import phu.dev.dao.CategoryDAO;
import phu.dev.model.Product;
import phu.dev.model.Category;
import phu.dev.ConnectMysql.DBConnection;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try (Connection conn = DBConnection.getConnection()) {
            ProductDAO productDAO = new ProductDAO(conn);
            CategoryDAO categoryDAO = new CategoryDAO(conn);

            List<Product> products = productDAO.findAll();
            List<Category> categories = categoryDAO.findAll();

            request.setAttribute("products", products);
            request.setAttribute("categories", categories);

            request.getRequestDispatcher("/index.jsp").forward(request, response);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
