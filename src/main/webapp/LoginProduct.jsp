<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>


        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }


    header {
      position: fixed;
      width: 100%;
      top: 0;
      right: 0;
      z-index: 1000;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 20px 10%;
    }



 .logo {
      max-width: 120px;
      height: auto;
    }







        body {
            height: 100vh;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background-color: white;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h2 {
            margin-bottom: 24px;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #4a90e2;
            outline: none;
        }

        button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            background-color: #4a90e2;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #357ABD;
        }

        .error-message {
            color: red;
            margin-bottom: 16px;
        }
    </style>
</head>
<body>


<header>
    <a href="home"> <img src="assets/img/logo_color%20(1).png" alt="" /></a>
  </header>
    <form action="LoginProduct.controller" method="post" class="login-container">
        <h2>Đăng nhập hệ thống</h2>

        <%
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
            <div class="error-message"><%= error %></div>
        <%
            }
        %>

        <input type="text" name="username" placeholder="Tên đăng nhập" required>
        <input type="password" name="password" placeholder="Mật khẩu" required>
        <button type="submit">Đăng nhập</button>
    </form>
</body>
</html>
