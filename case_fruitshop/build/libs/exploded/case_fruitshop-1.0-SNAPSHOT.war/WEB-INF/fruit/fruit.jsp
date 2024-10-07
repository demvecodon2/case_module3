<%--
  Created by IntelliJ IDEA.
  User: hieu
  Date: 10/6/2024
  Time: 6:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Sản Phẩm</title>
    <link rel="stylesheet" href="../styles.css">
</head>
<body>
<header>
    <h1>Cửa Hàng Hoa Quả</h1>
    <nav>
        <ul>
            <li><a href="../index.jsp">Trang Chủ</a></li>
            <li><a href="productList.jsp">Sản Phẩm</a></li>
            <li><a href="contact.jsp">Liên Hệ</a></li>
        </ul>
    </nav>
</header>

<main>
    <h2>Danh Sách Sản Phẩm</h2>
    <div class="product-grid">
        <c:forEach var="product" items="${products}">
            <div class="product-card">
                <img src="${product.image}" alt="${product.name}">
                <h3>${product.name}</h3>
                <p>Giá: ${product.price} VNĐ</p>
                <a href="fruitshop?action=edit&id=${product.id}">Chi Tiết</a>
                <a href="fruitshop?action=delete&id=${product.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
            </div>
        </c:forEach>
    </div>
    <a href="s.jsp">Thêm Sản Phẩm Mới</a>
</main>

<footer>
    <p>&copy; 2024 Cửa Hàng Hoa Quả. Tất cả quyền được bảo lưu.</p>
</footer>
</body>
</html>


