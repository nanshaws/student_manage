<%--
  Created by IntelliJ IDEA.
  User: SYJ
  Date: 2021/5/2
  Time: 13:21
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>404</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/404.css"/>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/js/404.js"></script>
</head>
<body>
<div class="code">
    <p>ERROR 404</p>
</div>
<div class="road">
    <div class="shadow">
        <div class="shelt">
            <div class="head">
                <div class="eyes">
                    <div class="lefteye">
                        <div class="eyeball"></div>
                        <div class="eyebrow"></div>
                    </div>
                    <div class="righteye">
                        <div class="eyeball"></div>
                        <div class="eyebrow"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hat"></div>
        <div class="bubble">
            <a href="<%=basePath%>tologin">Go back Home?</a>
        </div>
    </div>
    <p>PAGE NOT FOUND</p>
</div>
</body>
</html>
