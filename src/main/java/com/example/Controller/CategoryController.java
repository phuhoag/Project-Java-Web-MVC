package com.example.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import phu.dev.dao.CategoryDAO;
import phu.dev.dao.ProductDAO;
import phu.dev.model.Category;
import phu.dev.model.Product;
import phu.dev.ConnectMysql.DBConnection;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;


@WebServlet("/category")
public class CategoryController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String prefix = request.getParameter("prefix");

        try (Connection conn = DBConnection.getConnection()) {
            ProductDAO productDAO = new ProductDAO(conn);

            List<Product> products;

            if (prefix != null && !prefix.trim().isEmpty()) {
                products = productDAO.getProductsByNamePrefix(prefix);
            } else {
                products = productDAO.findAll();  
            }

            request.setAttribute("products", products);
            request.getRequestDispatcher("index.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("Prefix: " + prefix);


    }
}






