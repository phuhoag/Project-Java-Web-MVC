<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="phu.dev.model.Product" %>
<%@ page import="java.io.File" %>

<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("LoginProduct.controller");
        return;
    }
%>






<!DOCTYPE html>
<html lang="vi">
<head>
    <title>Quản lý sản phẩm</title>

    <link rel="shortcut icon" href="assets/img/logo_color%20(1).png" type="image/x-icon">
        <!--css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;1,500;1,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">











    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 40px;
            background-color: #f0f2f5;
        }

        h1, h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0,0,0,0.05);
        }

        th, td {
            padding: 14px 12px;
            text-align: center;
            border-bottom: 1px solid #eee;
        }

        th {
            background-color: #00796b;
            color: white;
            font-weight: 600;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        input[type="text"],
        input[type="number"] {
            width: 95%;
            padding: 6px 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            padding: 6px 12px;
            margin: 2px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .edit-btn {
            background-color: #43a047;
            color: white;
        }

        .edit-btn:hover {
            background-color: #388e3c;
        }

        .delete-btn {
            background-color: #e53935;
            color: white;
        }

        .delete-btn:hover {
            background-color: #c62828;
        }

        .form-container {
            background-color: white;
            padding: 25px;
            margin: 40px auto;
            width: 60%;
            box-shadow: 0 4px 8px rgba(0,0,0,0.08);
            border-radius: 10px;
        }

        .form-container input[type="text"],
        .form-container input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container button {
            background-color: #00796b;
            color: white;
            padding: 10px 16px;
            font-size: 15px;
        }

        img {
            max-height: 100px;
            border-radius: 4px;
        }

        @media (max-width: 768px) {
            .form-container, table {
                width: 95%;
            }

            th, td {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<nav class = "navbar navbar-expand-lg navbar-light bg-white py-4 fixed-top">
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



                </button>
                </a>

               <a href="add-to-cart?action=view" class="user">
                   <button type="button" class="btn position-relative" style="font-size: 20px;">
                       <i class="bi bi-cart"></i>
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





<h1 style="margin-top : 100px">Danh sách sản phẩm</h1>

<%
    List<Product> products = (List<Product>) request.getAttribute("products");
%>

<table>
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Mô tả</th>
        <th>Giá</th>
        <th>Số lượng</th>
        <th>Danh mục</th>
        <th>Ảnh</th>
        <th>Thao tác</th>
    </tr>

    <% for (Product p : products) { %>
        <tr>
            <form method="post" action="products">
                <input type="hidden" name="action" value="update"/>
                <input type="hidden" name="id" value="<%= p.getId() %>"/>
                <td><%= p.getId() %></td>
                <td><input type="text" name="name" value="<%= p.getName() %>" /></td>
                <td><input type="text" name="description" value="<%= p.getDescription() %>" /></td>
                <td><input type="number" step="0.01" name="price" value="<%= p.getPrice() %>" /></td>
                <td><input type="number" name="quantity" value="<%= p.getQuantity() %>" /></td>
                <td><input type="number" name="categoryId" value="<%= p.getCategoryId() %>" /></td>
                <td>
                    <input type="hidden" name="image" value="<%= p.getImage() %>" />
                    <img src="assets/img/<%= (p.getImage() != null ? new File(p.getImage()).getName() : "default.png") %>" alt="image" />
                </td>
                <td>
                    <button type="submit" class="edit-btn">Sửa</button>
            </form>
            <form method="post" action="products" style="display:inline;">
                <input type="hidden" name="action" value="delete"/>
                <input type="hidden" name="id" value="<%= p.getId() %>"/>
                <button type="submit" class="delete-btn">Xoá</button>
            </form>
                </td>
        </tr>
    <% } %>
</table>

<div class="form-container">
    <h2>Thêm sản phẩm</h2>
    <form method="post" action="products">
        <input type="hidden" name="action" value="insert"/>
        <label>Tên:</label>
        <input type="text" name="name" required />
        <label>Mô tả:</label>
        <input type="text" name="description" required />
        <label>Giá:</label>
        <input type="number" step="0.01" name="price" required />
        <label>Số lượng:</label>
        <input type="number" name="quantity" required />
        <label>Danh mục:</label>
        <input type="number" name="categoryId" required />
        <label>Ảnh:</label>
        <input type="text" name="image" required />
        <button type="submit">Thêm</button>
    </form>
</div>



<p style="text-align:right;">
    Xin chào <%= session.getAttribute("username") %> |
    <a href="<%= request.getContextPath() %>/logout">Đăng xuất</a>
</p>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
