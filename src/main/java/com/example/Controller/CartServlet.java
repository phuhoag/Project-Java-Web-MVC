package com.example.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import phu.dev.model.OrderItem;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/add-to-cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Đảm bảo UTF-8 để hỗ trợ tiếng Việt
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // Lấy dữ liệu từ form
        String idStr = request.getParameter("id");
        String name = request.getParameter("name");
        String priceStr = request.getParameter("price");
        String quantityStr = request.getParameter("quantity");
        String imageUrl = request.getParameter("imageUrl");

        // Kiểm tra null hoặc rỗng
        if (idStr == null || idStr.isEmpty() ||
                name == null || name.isEmpty() ||
                priceStr == null || priceStr.isEmpty() ||
                quantityStr == null || quantityStr.isEmpty() ||
                imageUrl == null || imageUrl.isEmpty()) {

            System.err.println("Lỗi: Thiếu dữ liệu từ form:");
            System.err.println("id = " + idStr);
            System.err.println("name = " + name);
            System.err.println("price = " + priceStr);
            System.err.println("quantity = " + quantityStr);
            System.err.println("imageUrl = " + imageUrl);

            response.sendRedirect("error.jsp");
            return;
        }

        try {
            int id = Integer.parseInt(idStr);
            double price = Double.parseDouble(priceStr);
            int quantity = Integer.parseInt(quantityStr);

            HttpSession session = request.getSession();
            List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");

            if (cart == null) {
                cart = new ArrayList<>();
            }

            boolean found = false;
            for (OrderItem item : cart) {
                if (item.getId() == id) {
                    item.setQuantity(item.getQuantity() + quantity);
                    found = true;
                    break;
                }
            }

            if (!found) {
                OrderItem newItem = new OrderItem(id, name, price, quantity, imageUrl);
                cart.add(newItem);
            }

            session.setAttribute("cart", cart);
            response.sendRedirect("cart.jsp");

        } catch (NumberFormatException e) {
            System.err.println("Lỗi chuyển đổi số: " + e.getMessage());
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
