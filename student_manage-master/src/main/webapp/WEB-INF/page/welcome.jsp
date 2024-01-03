<%--
  Created by IntelliJ IDEA.
  User: CYL
  Date: 2021/4/16
  Time: 16:45
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>欢迎界面</title>
</head>
<body style="background-size:cover;background: url(<%=basePath%>static/img/welcomeTo.jpg) no-repeat;">
<h1 style="text-align: center">欢迎你</h1>
</body>
</html>
