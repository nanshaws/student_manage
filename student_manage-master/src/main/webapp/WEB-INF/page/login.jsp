<%--
  Created by IntelliJ IDEA.
  User: SYJ
  Date: 2021/4/3
  Time: 11:06
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>登录界面</title>
    <base href="<%=basePath%>">
    <link href="<%=basePath%>static/css/tab.css" type="text/css" rel="stylesheet">
    <link href="<%=basePath%>static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body style="background: url(<%=basePath%>static/img/bg.jpg);background-size:cover;background-repeat:no-repeat;">
<div class="container">
    <div class="content">
        <div class="content_wrapper">
            <div class="xm_login_container login_container" id="login">
                <div class="xm_login_card">
                    <div class="xm_login_card_tab">
                        <div class="xm_login_card_tab_item" id="wxLoginTab" style="background: #acc3e4">教职工登录</div>
                        <div class="xm_login_card_tab_item xm_login_card_tab_item_Active" id="qqLoginTab"
                             style="background: #b8ff82">学生登录
                        </div>
                    </div>
                    <div class="xm_login_card_cnt">
                        <div class="xm_login_card_wx" id="wxLoginCard"
                             style="background: url(<%=basePath%>static/img/teacher.jpg);background-size:cover;background-repeat:no-repeat;">
                            <div class="main impowerBox">
                                <div class="loginPanel normalPanel">
                                    <div class="waiting panelContent">
                                        <div class="wrp_code">
                                            <form class="qrcode lightBorder" method="post" action="teacher.login">
                                                <font color="red">
                                                    <span id="message2">${msg}</span>
                                                </font>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/><br/>
                                                教师工号：
                                                <input type="text" name="teacherid">
                                                <br/><br/>
                                                密&nbsp;码：
                                                <input type="password" name="password">
                                                <br/><br/>
                                                <center>&nbsp;<input type="checkbox" name="manager" value="1">以管理员方式登录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </center>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <center><input class="btn btn-primary btn-sm" type="submit" value="登录">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </center>
                                                <input name="manager" type="hidden" value="hidden">
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="xm_login_card_qq" id="qqLoginCard"
                             style="background: url(<%=basePath%>static/img/student.jpg)">
                            <div class="main impowerBox">
                                <div class="loginPanel normalPanel">
                                    <div class="waiting panelContent">
                                        <div class="wrp_code">
                                            <form class="qrcode lightBorder" method="post" action="student.login">
                                                <font color="red">
                                                    <span id="message1">${msg}</span>
                                                </font>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/><br/>
                                                学&nbsp;号：<input type="text" name="studentid">
                                                <br/><br/>
                                                密&nbsp;码：<input type="password" name="password">
                                                <br/><br/>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <center><input class="btn btn-primary btn-sm" type="submit" value="登录"></center>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    wxLoginTab.onclick = clickWxLoginTab
    qqLoginTab.onclick = clickQQLoginTab

    function clickWxLoginTab() {
        if (wxLoginTab.className.indexOf('xm_login_card_tab_item_Active') === -1) {
            wxLoginTab.className += ' xm_login_card_tab_item_Active'
            qqLoginTab.className = qqLoginTab.className.replace(' xm_login_card_tab_item_Active', '')
            qqLoginCard.style.left = '-100%'
        }
    }

    function clickQQLoginTab() {
        if (qqLoginTab.className.indexOf('xm_login_card_tab_item_Active') === -1) {
            qqLoginTab.className += ' xm_login_card_tab_item_Active'
            wxLoginTab.className = wxLoginTab.className.replace(' xm_login_card_tab_item_Active', '')
            qqLoginCard.style.left = '0'
        }
    }
</script>
</body>
</html>
