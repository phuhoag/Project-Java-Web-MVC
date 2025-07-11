package phu.dev.dao;

import phu.dev.model.Category;
import java.sql.*;
import java.util.*;

public class CategoryDAO {
    private final Connection connection;

    public CategoryDAO(Connection connection) {
        this.connection = connection;
    }

    public List<Category> findAll() {
        List<Category> categories = new ArrayList<>();
        String sql = "SELECT * FROM categories";
        try (PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                categories.add(new Category(rs.getInt("id"), rs.getString("name")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }
}
