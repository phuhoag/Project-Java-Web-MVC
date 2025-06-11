<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="phu.dev.model.Product" %>
<%@ page import="java.io.File" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <title>Quản lý sản phẩm</title>
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

<h1>Danh sách sản phẩm</h1>

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

</body>
</html>
