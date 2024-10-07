<%--
  Created by IntelliJ IDEA.
  User: hieu
  Date: 10/6/2024
  Time: 6:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Chi Tiết Sản Phẩm</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<header>
    <h1>Cửa Hàng Hoa Quả</h1>
    <nav>
        <ul>
            <li><a href="">Trang Chủ</a></li>
            <li><a href="">Sản Phẩm</a></li>
            <li><a href="">Liên Hệ</a></li>
        </ul>
    </nav>
</header>

<main>
    <h2>Chi Tiết Sản Phẩm</h2>
    <div class="product-detail">
        <img src="${product.image}" alt="${product.name}">
        <h3>${product.name}</h3>
        <p>Giá: ${product.price} VNĐ</p>
        <p>Mô tả: ${product.description}</p>
        <form action="fruitshop" method="post">
            <input type="hidden" name="action" value="edit">
            <input type="hidden" name="id" value="${product.id}">
            <label>Tên sản phẩm:</label>
            <input type="text" name="name" value="${product.name}" required><br>
            <label>Mô tả:</label>
            <textarea name="description" required>${product.description}</textarea><br>
            <label>Giá:</label>
            <input type="number" name="price" value="${product.price}" required><br>
            <label>Hình ảnh:</label>
            <input type="text" name="image" value="${product.image}" required><br>
            <button type="submit">Cập nhật sản phẩm</button>
        </form>
    </div>
</main>

<footer>
    <p>&copy; 2024 Cửa Hàng Hoa Quả. Tất cả quyền được bảo lưu.</p>
</footer>
</body>
</html>
