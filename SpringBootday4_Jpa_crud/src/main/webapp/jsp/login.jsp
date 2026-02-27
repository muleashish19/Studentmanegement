<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background: linear-gradient(135deg, #74ebd5, #9face6);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 0;
    }

    .login-container {
        background: #ffffff;
        padding: 30px;
        width: 350px;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    .login-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #555;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    .form-group input:focus {
        outline: none;
        border-color: #6a82fb;
    }

    .login-btn {
        width: 100%;
        padding: 10px;
        background: #6a82fb;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }

    .login-btn:hover {
        background: #5a72e8;
    }

    .register-link {
        text-align: center;
        margin-top: 15px;
    }

    .register-link a {
        text-decoration: none;
        color: #6a82fb;
        font-weight: bold;
    }

    .register-link a:hover {
        text-decoration: underline;
    }
</style>
</head>

<body>

<div class="login-container">
    <h2>Login</h2>

    <form action="log" method="post">
        <div class="form-group">
            <label>Username</label>
            <input type="text" name="username" placeholder="Enter username" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter password" required>
        </div>

        <input type="submit" value="LOGIN" class="login-btn">

        <div class="register-link">
            <p>New user? <a href="openregisterpage">Register Here</a></p>
        </div>
    </form>
</div>

</body>
</html>