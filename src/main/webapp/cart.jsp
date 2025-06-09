<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, phu.dev.model.OrderItem" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Giỏ hàng</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
  <div class="container mt-5 pt-5">
    <div class="row">
      <div class="col-lg-8">
        <h4>🛒 Giỏ Hàng Của Bạn (<%= session.getAttribute("cart") != null ? ((List<OrderItem>) session.getAttribute("cart")).size() : 0 %> sản phẩm)</h4>

        <%
          List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");
          double total = 0;

          if (cart != null && !cart.isEmpty()) {
        %>

        <table class="table table-bordered align-middle">
          <thead class="table-light">
            <tr>
              <th>Hình ảnh</th>
              <th>Sản phẩm</th>
              <th>Giá</th>
              <th>Số lượng</th>
              <th>Thành tiền</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <%
              for (int i = 0; i < cart.size(); i++) {
                OrderItem item = cart.get(i);
                double itemTotal = item.getPrice() * item.getQuantity();
                total += itemTotal;
            %>
            <tr>
              <td><img src="<%= item.getImageUrl() %>" width="60" alt="Ảnh"></td>
              <td><%= item.getName() %></td>
              <td><%= String.format("%,.0f VND", item.getPrice()) %></td>
              <td><%= item.getQuantity() %></td>
              <td><%= String.format("%,.0f VND", itemTotal) %></td>
              <td>
                <form action="remove-from-cart" method="post">
                  <input type="hidden" name="index" value="<%= i %>">
                  <button type="submit" class="btn btn-sm btn-danger">Xóa</button>
                </form>
              </td>
            </tr>
            <% } %>
          </tbody>
        </table>
        <% } else { %>
          <p class="text-muted">Giỏ hàng trống.</p>
        <% } %>
      </div>

      <div class="col-lg-4">
        <div class="border p-3 bg-light">
          <p>📞 Chăm Sóc Khách Hàng: <strong>0848606918</strong></p>
          <hr>
          <p>Giá sản phẩm:
            <strong>
              <%
                if (cart != null && !cart.isEmpty()) {
                  out.print(String.format("%,.0f VND", total));
                } else {
                  out.print("0 VND");
                }
              %>
            </strong>
          </p>
          <p>Phí vận chuyển: <strong>50.000 VND</strong></p>
          <hr>
          <p>Tổng tiền:
            <strong>
              <%
                if (cart != null && !cart.isEmpty()) {
                  double grandTotal = total + 50000;
                  out.print(String.format("%,.0f VND", grandTotal));
                } else {
                  out.print("0 VND");
                }
              %>
            </strong>
          </p>
          <hr>
          <form action="checkout" method="post">
            <button type="submit" class="btn btn-primary w-100 mt-2">Thanh toán ngay</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
