package phu.dev.dao;

import java.sql.*;
import java.util.*;

import phu.dev.model.OrderItem;

public class OrderItemDAO {
    private Connection conn;

    public OrderItemDAO(Connection conn) {
        this.conn = conn;
    }


    public List<OrderItem> getCartByUserId(int userId) throws SQLException {
        List<OrderItem> list = new ArrayList<>();
        String sql = "SELECT oi.* FROM order_items oi JOIN orders o ON oi.order_id = o.id WHERE o.user_id = ? AND o.status = 'cart'";

        try (PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    OrderItem item = new OrderItem(
                            rs.getInt("id"),
                            rs.getInt("quantity"),
                            rs.getDouble("price"),
                            rs.getInt("order_id"),
                            rs.getInt("product_id"),
                            rs.getString("image_url") // Thêm tham số này cho đủ constructor
                    );

                    item.setImageUrl(rs.getString("image_url")); // ✅ Gán image_url
                    list.add(item);
                }
            }
        }
        return list;
    }
}
