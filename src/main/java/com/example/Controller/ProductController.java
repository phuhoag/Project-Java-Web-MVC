package com.example.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import phu.dev.dao.ProductDAO;
import phu.dev.model.Product;

import java.io.IOException;
import java.sql.*;
import java.util.List;

@WebServlet("/products")
public class ProductController extends HttpServlet {
    private ProductDAO productDAO;

    @Override
    public void init() throws ServletException {
        String jdbcURL = "jdbc:mysql://localhost:3306/dao_servlet";
        String jdbcUsername = "root";
        String jdbcPassword = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            productDAO = new ProductDAO(connection);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = productDAO.findAll();
        req.setAttribute("products", products); // ✅ Gán trước khi forward
        req.getRequestDispatcher("/productlist.jsp").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        try {
            if ("insert".equalsIgnoreCase(action)) {
                insertProduct(req, resp);
            } else if ("update".equalsIgnoreCase(action)) {
                updateProduct(req, resp);
            } else if ("delete".equalsIgnoreCase(action)) {
                deleteProduct(req, resp);
            } else {
                resp.sendRedirect("products");
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    private void insertProduct(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        try {
            String name = req.getParameter("name");
            String description = req.getParameter("description");
            double price = Double.parseDouble(req.getParameter("price"));
            int quantity = Integer.parseInt(req.getParameter("quantity"));
            int categoryId = Integer.parseInt(req.getParameter("categoryId"));
            String image = req.getParameter("image");
            Timestamp createdAt = new Timestamp(System.currentTimeMillis());

            Product product = new Product(0, name, description, price, quantity, 0, categoryId, createdAt, image);
            productDAO.insert(product);

            resp.sendRedirect("products");
        } catch (NumberFormatException e) {
            throw new ServletException("Invalid number format", e);
        }
    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            Product existingProduct = productDAO.findById(id);

            if (existingProduct == null) {
                throw new ServletException("Product not found with ID: " + id);
            }

            String name = req.getParameter("name");
            String description = req.getParameter("description");
            double price = Double.parseDouble(req.getParameter("price"));
            int quantity = Integer.parseInt(req.getParameter("quantity"));
            int categoryId = Integer.parseInt(req.getParameter("categoryId"));
            String image = req.getParameter("image");

            Product product = new Product(
                    id,
                    name,
                    description,
                    price,
                    quantity,
                    existingProduct.getView(),
                    categoryId,
                    existingProduct.getCreatedAt(),
                    image
            );

            productDAO.update(product);
            resp.sendRedirect("products");
        } catch (NumberFormatException e) {
            throw new ServletException("Invalid number format", e);
        }
    }

    private void deleteProduct(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            productDAO.delete(id);
            resp.sendRedirect("products");
        } catch (NumberFormatException e) {
            throw new ServletException("Invalid ID format", e);
        }
    }
}
