<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý User</title>
</head>
<body>
    <h2>Danh Sách Người Dùng (Users)</h2>
    <div style="margin-bottom: 15px;">
        <a href="${pageContext.request.contextPath}/users?action=create">Thêm mới User</a> | 
        <a href="${pageContext.request.contextPath}/users?action=sort">Sắp xếp theo Tên (A-Z)</a> | 
        <a href="${pageContext.request.contextPath}/users">Tất cả</a>
    </div>

    <form action="${pageContext.request.contextPath}/users?action=search" method="post" style="margin-bottom: 15px;">
        <label>Tìm kiếm theo Country: </label>
        <input type="text" name="country" placeholder="Nhập quốc gia..." required />
        <button type="submit">Tìm</button>
    </form>

    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th><th>Tên User</th><th>Email</th><th>Quốc gia</th><th>Hành động</th>
        </tr>
        <c:forEach var="user" items="${requestScope.listUser}">
            <tr>
                <td><c:out value="${user.id}" /></td>
                <td><c:out value="${user.name}" /></td>
                <td><c:out value="${user.email}" /></td>
                <td><c:out value="${user.country}" /></td>
                <td>
                    <a href="${pageContext.request.contextPath}/users?action=edit&id=${user.id}">Sửa</a>
                    <a href="${pageContext.request.contextPath}/users?action=delete&id=${user.id}">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
