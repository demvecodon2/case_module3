<%--
  Created by IntelliJ IDEA.
  User: hieu
  Date: 10/6/2024
  Time: 6:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Lỗi</title>
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Đã xảy ra lỗi</h2>
    <div class="alert alert-danger">
        <p>${error}</p>
    </div>
    <a href="fruitshop" class="btn btn-secondary">Quay lại danh sách</a>
</div>
</body>
</html>
