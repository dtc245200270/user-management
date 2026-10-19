<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Chỉnh Sửa User</title></head>
<body>
    <h2>Cập Nhật Thông Tin User</h2>
    <form action="${pageContext.request.contextPath}/users?action=edit" method="post">
        <input type="hidden" name="id" value="<c:out value='${requestScope.user.id}' />" />
        Tên: <input type="text" name="name" value="<c:out value='${requestScope.user.name}' />" required /><br/>
        Email: <input type="email" name="email" value="<c:out value='${requestScope.user.email}' />" required /><br/>
        Quốc gia: <input type="text" name="country" value="<c:out value='${requestScope.user.country}' />" required /><br/>
        <button type="submit">Cập nhật</button>
    </form>
    <a href="${pageContext.request.contextPath}/users">Quay lại danh sách</a>
</body>
</html>
