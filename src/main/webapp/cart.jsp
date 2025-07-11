<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, phu.dev.model.OrderItem" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Giỏ hàng</title>




     <link rel="shortcut icon" href="assets/img/logo_color%20(1).png" type="image/x-icon">
      <!--css-->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;1,500;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>
<body>

<nav class = "navbar navbar-expand-lg navbar-light bg-white py-4 fixed-top ">
        <div class = "container">
            <a class = "navbar-brand d-flex justify-content-between align-items-center order-lg-0" href = "home">
                <img src = "assets/img/logo_color%20(1).png" alt = "logo">

            </a>


            <div class = "order-lg-2 nav-btns   " style="transform: translateX(50px);">



        <form action="home" method="get" style="display:inline;">
            <input
                type="text"
                name="keyword"
                id="searchInput"
                placeholder="Tìm sản phẩm..."
                class="position-relative rounded-5 form-control-sm mt-3 mt-md-0"
                style="width: 200px; height: 35px; border: 1px solid transparent; background-color: rgba(207, 211, 203, .2);"
                value="<%= request.getParameter("keyword") != null ? request.getParameter("keyword") : "" %>"
                oninput="this.form.submit()"
            />
        </form>








                <button type = "button" class = "btn position-relative" style="font-size: 20px;">

                   <a href="products" style="color: black;"> <i class="fa-solid fa-screwdriver-wrench"></i></a>

                </button>


               <a href="LoginServlet" class="text-reset" >
                <button type="button" class = "btn position-relative " style="font-size: 20px;">

                <i class="bi bi-person-circle"></i>



                </button></a>

                <a href="cart.jsp" class="user">
                    <button type="button" class="btn position-relative" style="font-size: 20px;">
                        <i class="bi bi-cart"></i>


                        <!-- <span class="position-absolute top-0 start-100 translate-middle badge bg-danger " style="font-size: 12px;">0</span> -->

                    </button>
                </a>


            </div>

            <button class = "navbar-toggler border-0" type = "button" data-bs-toggle = "collapse" data-bs-target = "#navMenu">
                <span class = "navbar-toggler-icon"></span>
            </button>

            <div class = "collapse navbar-collapse order-lg-1  mb-20px" id = "navMenu" >
                <ul class = "navbar-nav mx-auto text-center">
                    <li class = "nav-item px-2 py-2">
                        <a class = "nav-link text-uppercase text-dark " href = "#header">Trang Chủ</a>
                    </li>
                    <li class = "nav-item px-2 py-2">
                        <a class = "nav-link text-uppercase text-dark" href = "#collection">Bộ Sưu Tập</a>
                    </li>
                    <li class = "nav-item px-2 py-2">
                        <a class = "nav-link text-uppercase text-dark" href = "#special">Đặc Biệt</a>
                    </li>
                    <li class = "nav-item px-2 py-2">
                        <a class = "nav-link text-uppercase text-dark" href = "#blogs">Tin Tức</a>
                    </li>
                    <li class = "nav-item px-2 py-2">
                        <a class = "nav-link text-uppercase text-dark" href = "#about">Về Chúng Tôi </a>
                    </li>







                </ul>
            </div>
        </div>
    </nav>






    <div class="container  pt-5" style="margin-top :100px">
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

          <div class="col-lg-4" style="margin-top :35px">
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




   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
