package com.example.Controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import phu.dev.dao.ProductDAO;
import phu.dev.model.Product;
import phu.dev.ConnectMysql.DBConnection;

import java.io.IOException;
import java.sql.Connection;

@WebServlet("/detail")
public class ProductDetailController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String productIdParam = request.getParameter("productId");
        if (productIdParam != null) {
            try {
                int productId = Integer.parseInt(productIdParam);

                // Lấy connection từ class DBConnection
                try (Connection connection = DBConnection.getConnection()) {
                    ProductDAO dao = new ProductDAO(connection);
                    Product product = dao.findById(productId);

                    if (product != null) {
                        request.setAttribute("product", product);
                        RequestDispatcher dispatcher = request.getRequestDispatcher("detail.jsp");
                        dispatcher.forward(request, response);
                    } else {
                        response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
                    }
                }

            } catch (NumberFormatException e) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID");
            } catch (Exception e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Server error");
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing product ID");
        }
    }
}
