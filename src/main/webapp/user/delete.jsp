<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Xác nhận Xóa User</title></head>
<body>
    <h2>Xác Nhận Xóa User</h2>
    <p>Tên: ${requestScope.user.name}</p>
    <form action="${pageContext.request.contextPath}/users?action=delete" method="post">
        <input type="hidden" name="id" value="${requestScope.user.id}" />
        <button type="submit">Đồng ý Xóa</button>
        <a href="${pageContext.request.contextPath}/users">Hủy bỏ</a>
    </form>
</body>
</html>
