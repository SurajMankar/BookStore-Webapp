<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login - Bookstore</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: #f2f2f2;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .login-box {
      background: #fff;
      padding: 40px 30px;
      border-radius: 10px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 400px;
    }

    .login-box h2 {
      margin-bottom: 25px;
      text-align: center;
      color: #333;
    }

    .login-box input[type="email"],
    .login-box input[type="password"] {
      width: 100%;
      padding: 12px 15px;
      margin: 9px 0;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 1rem;
      transition: border 0.3s;
    }

    .login-box input:focus {
      border-color: #28a745;
      outline: none;
    }

    .login-box button {
      width: 100%;
      padding: 12px;
      background-color: #28a745;
      color: white;
      font-size: 1rem;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .login-box button:hover {
      background-color: #218838;
    }

    .error-msg {
      color: #d8000c;
      background-color: #ffdddd;
      padding: 10px;
      border: 1px solid #d8000c;
      border-radius: 6px;
      margin-top: 10px;
      text-align: center;
    }
  </style>
</head>
<body>

<div class="login-box">
  <h2>Login</h2>
  <form method="post" action="login">
    <input type="email" name="email" placeholder="Email" required />
    <input type="password" name="password" placeholder="Password" required />
    <button type="submit">Login</button>

    <% if (request.getParameter("error") != null) { %>
      <div class="error-msg">Invalid email or password!</div>
    <% } %>
  </form>
</div>

</body>
</html>
