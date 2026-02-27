<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .register-container {
        background: #ffffff;
        width: 380px;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 12px 30px rgba(0,0,0,0.25);
    }

    .register-container h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        font-weight: bold;
        margin-bottom: 6px;
        color: #555;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    .form-group input:focus {
        outline: none;
        border-color: #667eea;
    }

    .register-btn {
        width: 100%;
        padding: 10px;
        background: #667eea;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        margin-top: 10px;
    }

    .register-btn:hover {
        background: #556cd6;
    }

    .login-link {
        text-align: center;
        margin-top: 15px;
    }

    .login-link a {
        text-decoration: none;
        color: #667eea;
        font-weight: bold;
    }

    .login-link a:hover {
        text-decoration: underline;
    }
</style>
</head>

<body>

<div class="register-container">
    <h2>Student Registration</h2>

    <form action="savestu" method="post">
        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" placeholder="Enter full name" required>
        </div>

        <div class="form-group">
            <label>Username</label>
            <input type="text" name="username" placeholder="Choose username" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="Create password" required>
        </div>

        <input type="submit" value="Register" class="register-btn">

        <div class="login-link">
            <p>Already registered? <a href="openloginpage">Login Here</a></p>
        </div>
    </form>
</div>

</body>
</html>
