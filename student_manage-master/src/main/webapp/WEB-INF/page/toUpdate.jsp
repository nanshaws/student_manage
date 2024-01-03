<%--
  Created by IntelliJ IDEA.
  User: CYL
  Date: 2024/1/4
  Time: 0:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>文件上传</title>
</head>
<body>
<div style="text-align: center">
    <h1>文件上传</h1>
<form action="http://localhost:8080/toUpdate.action" method="post" enctype="multipart/form-data">
    选择文件：<input type="file" name="file"><br><br>
    <input type="submit" value="上传">
</form>
</div>
</body>
</html>
