package com.example.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import phu.dev.ConnectMysql.DBConnection;
import phu.dev.dao.ProductDAO;
import phu.dev.model.Product;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    private ProductDAO productDAO;

    @Override
    public void init() throws ServletException {
        try {
            Connection connection = DBConnection.getConnection();
            productDAO = new ProductDAO(connection);
        } catch (Exception e) {
            throw new ServletException("Cannot connect to database", e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String keyword = request.getParameter("keyword");
        List<Product> products;

        // Chỉ tìm kiếm nếu keyword dài từ 2 ký tự trở lên
        if (keyword != null && keyword.trim().length() >= 2) {
            products = productDAO.searchByKeyword(keyword.trim());
        } else {
            products = productDAO.findAll(); // hoặc trả về danh sách rỗng: new ArrayList<>();
        }

        request.setAttribute("products", products);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
