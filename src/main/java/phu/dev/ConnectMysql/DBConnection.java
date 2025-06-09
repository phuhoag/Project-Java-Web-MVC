package phu.dev.ConnectMysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/dao_servlet"; // đổi tên DB nếu cần
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new SQLException("MySQL Driver not found", e);
        }
        return DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
    }

}


