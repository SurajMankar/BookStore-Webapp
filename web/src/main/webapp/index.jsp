<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BookStore Home</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f8f9fa, #e3f2fd);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
        }

        h1 {
            color: #343a40;
            font-size: 3rem;
            margin-bottom: 10px;
        }

        p {
            font-size: 1.25rem;
            color: #555;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            padding: 15px 30px;
            margin: 10px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            font-weight: 600;
            font-size: 1rem;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            transition: transform 0.2s, background-color 0.2s, box-shadow 0.2s;
        }

        .btn:hover {
            background-color: #218838;
            transform: translateY(-3px);
            box-shadow: 0 6px 14px rgba(0,0,0,0.2);
        }

        .icon {
            margin-right: 8px;
        }

        @media (max-width: 600px) {
            h1 {
                font-size: 2rem;
            }
            .btn {
                width: 80%;
            }
        }
    </style>
</head>
<body>

    <h1>📚 Welcome to the Online Bookstore</h1>
    <p>Explore, discover, and order your favorite books easily!</p>

    <a class="btn" href="login.jsp">🔐 Login</a>
    <a class="btn" href="register.jsp">📝 Register</a>

</body>
</html>
