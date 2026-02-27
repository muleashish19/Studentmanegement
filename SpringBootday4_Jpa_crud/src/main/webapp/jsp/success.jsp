<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(120deg, #89f7fe, #66a6ff);
        margin: 0;
        padding: 40px;
    }

    h2 {
        text-align: center;
        color: #222;
        margin-bottom: 30px;
    }

    .container {
        max-width: 950px;
        margin: auto;
        background: #ffffff;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 12px 30px rgba(0,0,0,0.25);
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 15px;
    }

    th, td {
        padding: 14px;
        text-align: center;
    }

    th {
        background-color: #4e73df;
        color: #ffffff;
        text-transform: uppercase;
        font-size: 14px;
    }

    tr:nth-child(even) {
        background-color: #f8f9fc;
    }

    tr:hover {
        background-color: #e2e6ea;
    }

    td {
        color: #333;
        font-size: 15px;
    }

    .action a {
        text-decoration: none;
        padding: 7px 14px;
        border-radius: 6px;
        font-size: 14px;
        color: white;
        margin: 0 4px;
        display: inline-block;
    }

    .edit {
        background-color: #1cc88a;
    }

    .delete {
        background-color: #e74a3b;
    }

    .edit:hover {
        background-color: #17a673;
    }

    .delete:hover {
        background-color: #c0392b;
    }

    .top-bar {
        text-align: right;
        margin-bottom: 10px;
    }

    .add-btn {
        background-color: #4e73df;
        color: white;
        padding: 8px 16px;
        border-radius: 6px;
        text-decoration: none;
        font-weight: bold;
    }

    .add-btn:hover {
        background-color: #375adf;
    }
</style>
</head>

<body>

<h2>Welcome to Spring Boot</h2>

<div class="container">

    <div class="top-bar">
        <a href="openregisterpage" class="add-btn">+ Add Student</a>
    </div>

    <table>
        <tr>
            <th>Roll No</th>
            <th>Name</th>
            <th>Username</th>
            <th>Password</th>
            <th>Action</th>
        </tr>

        <c:forEach items="${data}" var="s">
            <tr>
                <td>${s.rollno}</td>
                <td>${s.name}</td>
                <td>${s.username}</td>
                <td>${s.password}</td>
                <td class="action">
                    <a href="edit?rollno=${s.rollno}" class="edit">Edit</a>
                    <a href="delete?rollno=${s.rollno}" class="delete"
                       onclick="return confirm('Are you sure you want to delete this student?')">
                       Delete
                    </a>
                </td>
            </tr>
        </c:forEach>

    </table>

</div>

</body>
</html>

