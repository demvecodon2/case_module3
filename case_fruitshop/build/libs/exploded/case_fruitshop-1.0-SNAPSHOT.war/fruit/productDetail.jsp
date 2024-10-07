<%--
  Created by IntelliJ IDEA.
  User: hieu
  Date: 10/6/2024
  Time: 6:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Chi Tiết Sản Phẩm</title>
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Chi Tiết Sản Phẩm</h2>
    <form action="fruitshop" method="post">
        <input type="hidden" name="action" value="edit">
        <input type="hidden" name="id" value="${product.id}">
        <div class="form-group">
            <label for="name">Tên:</label>
            <input type="text" class="form-control" id="name" name="name" value="${product.name}" required>
        </div>
        <div class="form-group">
            <label for="description">Mô tả:</label>
            <textarea class="form-control" id="description" name="description" required>${product.description}</textarea>
        </div>
        <div class="form-group">
            <label for="price">Giá:</label>
            <input type="number" class="form-control" id="price" name="price" value="${product.price}" required>
        </div>
        <div class="form-group">
            <label for="image">Hình ảnh:</label>
            <input type="text" class="form-control" id="image" name="image" value="${product.image}" required>
        </div>
        <div class="form-group">
            <label for="category_id">Danh mục:</label>
            <input type="number" class="form-control" id="category_id" name="category_id" value="${product.category_id}" required>
        </div>
        <button type="submit" class="btn btn-primary">Cập Nhật</button>
        <a href="fruitshop" class="btn btn-secondary">Quay lại danh sách</a>
    </form>
</div>
</body>
</html>

