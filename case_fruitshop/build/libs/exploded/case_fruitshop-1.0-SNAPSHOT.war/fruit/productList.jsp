<%--
  Created by IntelliJ IDEA.
  User: hieu
  Date: 10/6/2024
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Sản Phẩm</title>
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
    <h2>Danh Sách Sản Phẩm</h2>
    <div class="product-grid">
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Tên sản phẩm</th>
                <th>Mô tả</th>
                <th>Giá</th>
                <th>Hình ảnh</th>
                <th>Thao tác</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${empty products}">
                <tr>
                    <td colspan="6" style="text-align: center;">Không có sản phẩm nào.</td>
                </tr>
            </c:if>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td><c:out value="${product.id}"/></td>
                    <td><c:out value="${product.name}"/></td>
                    <td><c:out value="${product.description}"/></td>
                    <td><c:out value="${product.price}"/> VNĐ</td>
                    <td><img src="${product.image}" alt="${product.name}" style="max-width: 100px; max-height: 100px;"></td>
                    <td class="actions">
                        <a href="fruitshop?action=edit&id=${product.id}">Sửa</a>
                        <a href="fruitshop?action=delete&id=${product.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này?');">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <a href="/fruitshop?action=create">Thêm Sản Phẩm Mới</a>
</main>

<footer>
    <p>&copy; 2024 Cửa Hàng Hoa Quả. Tất cả quyền được bảo lưu.</p>
</footer>
</body>
</html>
