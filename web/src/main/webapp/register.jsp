<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>User Registration</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to right, #f8f9fa, #e3f2fd);
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
      min-height: 100vh;
      margin: 0;
    }

    h2 {
      color: #333;
      margin-bottom: 20px;
    }

    .register-form {
      background: #fff;
      padding: 30px 25px;
      border-radius: 10px;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 400px;
    }

    .register-form input {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 1rem;
      transition: border-color 0.3s;
    }

    .register-form input:focus {
      border-color: #007bff;
      outline: none;
    }

    .register-form button {
      width: 100%;
      padding: 12px;
      background-color: #007bff;
      color: white;
      font-size: 1rem;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      transition: background-color 0.3s ease-in-out;
    }

    .register-form button:hover {
      background-color: #0056b3;
    }

    .register-form .link {
      text-align: center;
      margin-top: 15px;
    }

    .register-form .link a {
      color: #007bff;
      text-decoration: none;
    }

    .register-form .link a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <h2>📝 Register as a User</h2>

  <form class="register-form" action="register" method="post">
    <input type="text" name="name" placeholder="👤 Full Name" required />
    <input type="email" name="email" placeholder="📧 Email Address" required />
    <input type="password" name="password" placeholder="🔒 Password" required />
    <button type="submit">Register</button>

    <div class="link">
      Already have an account? <a href="login.jsp">Login here</a>
    </div>
  </form>

</body>
</html>
