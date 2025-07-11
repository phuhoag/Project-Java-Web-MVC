<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Login</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet" />





 <style>
    html {
      font-family: "Roboto", sans-serif;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      scroll-behavior: smooth;
      list-style: none;
      text-decoration: none;
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

      background: url(./assets/img/fashion.avif) no-repeat center center fixed;
      background-size: cover;
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-container {
      max-width: 400px;
      background-color: transparent;
      border: 2px solid rgba(255, 255, 255, 0.5);
      padding: 20px;
      border-radius: 20px;
      color: #fff;
      width: 350px;
    }

    .social-icons a {
      margin: 0 10px;
      font-size: 24px;
      color: #fff;
    }
    .btn-custom {
      background-color: transparent;
      color: #fff;
      font-weight: bold;
      border: 2px solid rgba(255, 255, 255, 0.5);
    }
    a {
      color: #fff;
      text-decoration: none;
    }

    .form-group input::placeholder {
      color: #fff;
    }

    .form-check {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .form-check-label {
      margin-bottom: 0;
    }

  </style>

</head>
<body>

 <header>
    <a href="home"> <img src="assets/img/logo_color%20(1).png" alt="" /></a>
  </header>
<div class="login-container text-center">
  <h2 class="mb-4">Login</h2>
  <div class="social-icons mb-3">
            <a href="#"><i class="bi bi-facebook"></i></a>
            <a href="#"><i class="bi bi-google"></i></a>
            <a href="#"><i class="bi bi-twitter"></i></a>
          </div>

  <form method="post" action="LoginServlet">
    <div class="mb-3">
      <input type="email" name="email" class="form-control" placeholder="Email" required autofocus />
    </div>
    <div class="mb-3">
      <input type="password" name="password" class="form-control" placeholder="Password" required />
    </div>

    <div class="form-check mb-3 text-start">
      <input type="checkbox" class="form-check-input" id="togglePassword" onclick="togglePasswordVisibility()" />
      <label class="form-check-label" for="togglePassword" style="color: white;">Hiển thị mật khẩu</label>
    </div>

    <button type="submit" class="btn btn-custom w-100">Login</button>
  </form>

  <c:if test="${not empty error}">
    <p class="error-message">${error}</p>
  </c:if>

  <div class="mt-3">
    <p>Don’t have an account? <a href="Signup.html">Sign Up</a></p>
    <p><a href="#">Forgot your password?</a></p>
  </div>
</div>



...
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<script>
  function togglePasswordVisibility() {
    const passwordInput = document.querySelector('input[name="password"]');
    passwordInput.type = passwordInput.type === 'password' ? 'text' : 'password';
  }
</script>
</body>
</html>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
