<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="phu.dev.model.Product" %>
<%@ page import="java.io.File" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý sản phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f4f4f4;
        }

        h1, h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #009879;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        input[type="text"], input[type="number"] {
            width: 90%;
            padding: 5px;
        }

        button {
            padding: 6px 12px;
            margin: 2px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            opacity: 0.9;
        }

        .edit-btn {
            background-color: #4CAF50;
            color: white;
        }

        .delete-btn {
            background-color: #f44336;
            color: white;
        }

        .form-container {
            background-color: white;
            padding: 20px;
            margin-top: 30px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 80%;
            margin-left: auto;
            margin-right: auto;
            border-radius: 8px;
        }

        .form-container input[type="text"],
        .form-container input[type="number"] {
            width: calc(100% - 20px);
            padding: 8px;
            margin-bottom: 10px;
        }

        .form-container button {
            background-color: #009879;
            color: white;
        }
    </style>
</head>
<body>

<h1>Danh sách sản phẩm </h1>

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
            <td><input type="text" name="name" value="<%= p.getName() %>"/></td>
            <td><input type="text" name="description" value="<%= p.getDescription() %>"/></td>
            <td><input type="number" step="0.01" name="price" value="<%= p.getPrice() %>"/></td>
            <td><input type="number" name="quantity" value="<%= p.getQuantity() %>"/></td>
            <td><input type="number" name="categoryId" value="<%= p.getCategoryId() %>"/></td>
           <td>
               <!-- Trường ẩn giữ nguyên tên ảnh -->
               <input type="hidden" name="image" value="<%= p.getImage() %>" />
               <!-- Hiển thị ảnh hiện tại -->
               <img src="assets/img/<%= (p.getImage() != null ? new File(p.getImage()).getName() : "default.png") %>" alt="image" style="max-height: 100px;" />
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
        Tên:<br/><input type="text" name="name" required/><br/>
        Mô tả:<br/><input type="text" name="description" required/><br/>
        Giá:<br/><input type="number" step="0.01" name="price" required/><br/>
        Số lượng:<br/><input type="number" name="quantity" required/><br/>
        Danh mục:<br/><input type="number" name="categoryId" required/><br/>
        Ảnh:<br/><input type="text" name="image" required/><br/>
        <button type="submit">Thêm</button>
    </form>
</div>

</body>
</html>
