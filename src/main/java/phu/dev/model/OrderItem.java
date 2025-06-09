package phu.dev.model;

public class OrderItem {
    private int id;
    private String name;
    private double price;
    private int quantity;
    private int orderId;
    private int productId;
    private String imageUrl; // NEW

    // Constructor không tham số
    public OrderItem() {
    }

    // Constructor dùng trong CartServlet (id, name, price, quantity, imageUrl)
    public OrderItem(int id, String name, double price, int quantity, String imageUrl) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.imageUrl = imageUrl;
    }

    // Constructor dùng trong DAO (id, quantity, price, orderId, productId, imageUrl)
    public OrderItem(int id, int quantity, double price, int orderId, int productId, String imageUrl) {
        this.id = id;
        this.quantity = quantity;
        this.price = price;
        this.orderId = orderId;
        this.productId = productId;
        this.imageUrl = imageUrl;
    }

    // Getter & Setter cho tất cả các thuộc tính
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getImageUrl() { // NEW
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) { // NEW
        this.imageUrl = imageUrl;
    }
}
