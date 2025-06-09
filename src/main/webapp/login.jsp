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
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #121212;
      color: white;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .login-container {
      background-color: #222;
      padding: 30px;
      border-radius: 10px;
      width: 350px;
      box-shadow: 0 0 15px rgba(0,0,0,0.7);
    }
    .btn-custom {
      background-color: #007bff;
      border: none;
    }
    .btn-custom:hover {
      background-color: #0056b3;
    }
    input.form-control {
      background-color: transparent;
      color: white;
      border: 1px solid #555;
    }
    input.form-control:focus {
      border-color: #007bff;
      box-shadow: none;
      background-color: transparent;
      color: white;
    }
    .error-message {
      color: #ff4d4d;
      margin-top: 10px;
    }
  </style>

</head>
<body>

<div class="login-container text-center">
  <h2 class="mb-4">Login</h2>

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

<script>
  function togglePasswordVisibility() {
    const passInput = document.querySelector('input[name="password"]');
    const toggle = document.getElementById('togglePassword');
    passInput.type = toggle.checked ? 'text' : 'password';
  }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
