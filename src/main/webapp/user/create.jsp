<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Thêm Mới User</title></head>
<body>
    <h2>Thêm Mới User</h2>
    <form action="${pageContext.request.contextPath}/users?action=create" method="post">
        Tên: <input type="text" name="name" required /><br/>
        Email: <input type="email" name="email" required /><br/>
        Quốc gia: <input type="text" name="country" required /><br/>
        <button type="submit">Lưu</button>
    </form>
    <a href="${pageContext.request.contextPath}/users">Quay lại danh sách</a>
</body>
</html>
