<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>

<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background: linear-gradient(135deg, #fdfbfb, #ebedee);
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .update-container {
        background: #ffffff;
        width: 400px;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 12px 30px rgba(0,0,0,0.2);
    }

    .update-container h2 {
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
        border-color: #4e73df;
    }

    .readonly {
        background-color: #f2f2f2;
        cursor: not-allowed;
    }

    .btn-group {
        display: flex;
        gap: 10px;
        margin-top: 15px;
    }

    .update-btn {
        flex: 1;
        padding: 10px;
        background-color: #4e73df;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
    }

    .update-btn:hover {
        background-color: #375adf;
    }

    .cancel-btn {
        flex: 1;
        padding: 10px;
        background-color: #6c757d;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
        text-decoration: none;
        text-align: center;
        line-height: 38px;
    }

    .cancel-btn:hover {
        background-color: #5a6268;
    }
</style>
</head>

<body>

<div class="update-container">
    <h2>Update Student Details</h2>

    <form action="update" method="post">

        <div class="form-group">
            <label>Roll No</label>
            <input type="text" name="rollno" value="${stu.rollno}" readonly class="readonly">
        </div>

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" value="${stu.name}" required>
        </div>

        <div class="form-group">
            <label>Username</label>
            <input type="text" name="username" value="${stu.username}" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" value="${stu.password}" required>
        </div>

        <div class="btn-group">
            <input type="submit" value="Update" class="update-btn">
            <a href="success" class="cancel-btn">Cancel</a>
        </div>

    </form>
</div>

</body>
</html>
