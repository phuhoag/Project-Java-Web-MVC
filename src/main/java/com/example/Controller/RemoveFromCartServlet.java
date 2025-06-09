package com.example.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import phu.dev.model.OrderItem;

import java.io.IOException;
import java.util.List;

@WebServlet("/remove-from-cart")
public class RemoveFromCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int index = Integer.parseInt(request.getParameter("index"));
        HttpSession session = request.getSession();
        List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");

        if (cart != null && index >= 0 && index < cart.size()) {
            cart.remove(index);
        }

        response.sendRedirect("cart.jsp");
    }
}

