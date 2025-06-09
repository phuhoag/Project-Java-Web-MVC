package phu.dev.dao;

import phu.dev.model.User;
import java.sql.*;
import java.util.*;

public class UserDAO {
    private Connection conn;
    public UserDAO(Connection conn) { this.conn = conn; }

    public List<User> findAll() throws SQLException {
        List<User> list = new ArrayList<>();
        String sql = "SELECT * FROM users";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()) {
            list.add(new User(
                    rs.getInt("id"),
                    rs.getString("email"),
                    rs.getString("password"),
                    rs.getString("role")
            ));
        }
        return list;
    }

    public User checkLogin(String email, String password) throws SQLException {
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setEmail(email);
                user.setPassword(password);
                user.setRole(rs.getString("role"));
                return user;
            }
        }
        return null;
    }


    public User findById(int id) throws SQLException {
        String sql = "SELECT * FROM users WHERE id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            return new User(rs.getInt("id"), rs.getString("email"), rs.getString("password"), rs.getString("role"));
        }
        return null;
    }

    public void insert(User user) throws SQLException {
        String sql = "INSERT INTO users (email, password, role) VALUES (?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, user.getEmail());
        stmt.setString(2, user.getPassword());
        stmt.setString(3, user.getRole());
        stmt.executeUpdate();
    }

    public void update(User user) throws SQLException {
        String sql = "UPDATE users SET email = ?, password = ?, role = ? WHERE id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, user.getEmail());
        stmt.setString(2, user.getPassword());
        stmt.setString(3, user.getRole());
        stmt.setInt(4, user.getId());
        stmt.executeUpdate();
    }

    public void delete(int id) throws SQLException {
        String sql = "DELETE FROM users WHERE id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        stmt.executeUpdate();
    }
}