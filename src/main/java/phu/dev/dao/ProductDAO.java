package phu.dev.dao;

import phu.dev.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private final Connection connection;

    public ProductDAO(Connection connection) {
        this.connection = connection;
    }

    public List<Product> findAll() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM products";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet rs = statement.executeQuery()) {
            while (rs.next()) {
                Product product = new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getInt("quantity"),
                        rs.getInt("view"),
                        rs.getInt("category_id"), // ✅ ĐÃ SỬA
                        rs.getTimestamp("created_at"), // ✅ ĐÃ SỬA
                        rs.getString("image")
                );
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public void insert(Product product) throws SQLException {
        String sql = "INSERT INTO products (name, description, price, quantity, view, category_id, created_at, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"; // ✅ SỬA category_id, created_at
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, product.getName());
            ps.setString(2, product.getDescription());
            ps.setDouble(3, product.getPrice());
            ps.setInt(4, product.getQuantity());
            ps.setInt(5, product.getView());
            ps.setInt(6, product.getCategoryId());
            ps.setTimestamp(7, product.getCreatedAt());
            ps.setString(8, product.getImage());
            ps.executeUpdate();
        }
    }

    public void update(Product product) throws SQLException {
        String sql = "UPDATE products SET name=?, description=?, price=?, quantity=?, view=?, category_id=?, image=? WHERE id=?"; // ✅ SỬA category_id
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, product.getName());
            ps.setString(2, product.getDescription());
            ps.setDouble(3, product.getPrice());
            ps.setInt(4, product.getQuantity());
            ps.setInt(5, product.getView());
            ps.setInt(6, product.getCategoryId());
            ps.setString(7, product.getImage());
            ps.setInt(8, product.getId());
            ps.executeUpdate();
        }
    }

    public void delete(int id) throws SQLException {

        String sql = "DELETE FROM products WHERE id=?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }


    public List<Product> searchByKeyword(String keyword) {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM products WHERE name LIKE ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, keyword + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getInt("quantity"),
                        rs.getInt("view"),
                        rs.getInt("category_id"),
                        rs.getTimestamp("created_at"),
                        rs.getString("image")
                );
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }





    public Product findById(int id) {
        String sql = "SELECT * FROM products WHERE id=?";
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Product(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getDouble("price"),
                        rs.getInt("quantity"),
                        rs.getInt("view"),
                        rs.getInt("category_id"), // ✅ ĐÃ SỬA
                        rs.getTimestamp("created_at"), // ✅ ĐÃ SỬA
                        rs.getString("image")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
