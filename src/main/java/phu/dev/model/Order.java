package phu.dev.model;

import java.sql.Timestamp;

public class Order {
    private int id;
    private String code;
    private String status;
    private int userId;
    private Timestamp createdAt;

    public Order() {}

    public Order(int id, String code, String status, int userId, Timestamp createdAt) {
        this.id = id;
        this.code = code;
        this.status = status;
        this.userId = userId;
        this.createdAt = createdAt;
    }

    // Getters and Setters (omitted for brevity)
}
