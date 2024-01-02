<%--
  Created by IntelliJ IDEA.
  User: SYJ
  Date: 2021/4/3
  Time: 16:17
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>教师界面</title>
    <base href="<%=basePath%>">
    <link href="<%=basePath%>static/css/leftnav.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>static/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/vue/2.6.10/vue.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
<div class="page" id="app">
    <div class="nav-left" v-show="navLeftFlag" ref="navLeft" style="background: #99DDF4">
        <div class="LogoName">
            教务管理系统
        </div>
        <div class="navDiv">
            <div class="navName">导航</div>
            <div class="nav-list">
                <ul>
                    <li class="nav-tab a_active waves-effect">
                        <a href="<%=basePath%>toteainfo" class="li-a active" target="iframe">
                            <i class='bx bx-home-smile'></i>
                            个人信息
                        </a>
                    </li>
                    <%-- 普通教师登录界面 --%>
                    <c:if test="${manage ne 1}">
                        <li class="nav-tab nav-ul">
                            <a href="javascript:void[0]" class="li-a">
                                <i class='bx bx-layer'></i>
                                选课详情
                                <i class='bx bx-chevron-right' style="float: right;"></i>
                            </a>
                            <div class="nav-box">
                                <a href="<%=basePath%>tocdetail" class="li-a-a" target="iframe">选课详情</a>
                                <a href="<%=basePath%>toassignscore" class="li-a-a" target="iframe">成绩登记</a>
                            </div>
                        </li>
                    </c:if>
                    <%-- 管理员登录界面 --%>
                    <c:if test="${manage eq 1}">
                        <li class="nav-tab nav-ul">
                            <a href="javascript:void[0]" class="li-a">
                                <i class='bx bx-cog'></i>
                                学生管理
                                <i class='bx bx-chevron-right' style="float: right;"></i>
                            </a>
                            <div class="nav-box">
                                <a href="tomanagestudent" class="li-a-a" target="iframe">学生信息管理</a>
                            </div>
                        </li>
                        <li class="nav-tab nav-ul">
                            <a href="javascript:void[0]" class="li-a">
                                <i class='bx bx-buildings'></i>
                                教师管理
                                <i class='bx bx-chevron-right' style="float: right;"></i>
                            </a>
                            <div class="nav-box">
                                <a href="tomanageteacher" class="li-a-a" target="iframe">教师信息管理</a>
                            </div>
                        </li>
                        <li class="nav-tab nav-ul">
                            <a href="javascript:void[0]" class="li-a">
                                <i class='bx bx-edit'></i>
                                课程管理
                                <i class='bx bx-chevron-right' style="float: right;"></i>
                            </a>
                            <div class="nav-box">
                                <a href="tomanagecourse" class="li-a-a" target="iframe">课程信息管理</a>
                            </div>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </div>
    <div class="nav-right" ref="navRight">
        <div class="nav-top" style="background: url(<%=basePath%>static/img/topnav.jpg)">
            <button type="button" class="btn btn-primary btn-sm hiddenBtn" style="line-height: 10px;"
                    @click="isShowLeft">
                <span class="glyphicon glyphicon-list"></span>
            </button>
            <%-- 下拉菜单 --%>
            <div class="dropdown" style="z-index: 99;float: right;margin-right: 18px;margin-top: -3px">
                <button type="button" class="btn btn-success dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user"></span>&nbsp;${teacher.name}
                    <span class="caret "></span>
                </button>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                    <li role="presentation">
                        <a role="menuitem" tabindex="-1" href="javascript:void[0]">个人信息</a>
                    </li>
                    <li role="presentation">
                        <a role="menuitem" tabindex="-1" onclick="alert('有需要请联系系统管理员+QQ2973211152!')">帮助</a>
                    </li>
                    <li role="presentation" class="divider"></li>
                    <li role="presentation">
                        <a style="color: #b3adf4;font-weight: bold" role="menuitem" tabindex="-1" href="<%=basePath%>logout.action">
                            <span class="glyphicon glyphicon-log-out"></span>&nbsp;退出登录
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="content-page" ref="cPage" style="z-index: 80">
            <iframe name="iframe" width="100%" height="100%" frameborder="0" src="<%=basePath%>towelcome"></iframe>
        </div>
    </div>
</div>
<script>
    // 实现导航栏展开收缩
    $(function () {
        let navflag = false;
        $('.nav-tab').click(function () {
            $(this).siblings().each(function () {
                $(this).removeClass('a_active');
                // $(this).removeClass('a_active');
                $(this).find('.nav-box').css('height', '0')
                //关闭右侧箭头
                if ($(this).attr('class').indexOf('nav-ul') !== -1) {
                    $(this).find('.bx-chevron-right').css('transform', 'rotateZ(0deg)')
                    $(this).find('.bx-chevron-right').css('transition', 'all .5s')
                    $(this).removeClass('nav-show')
                    // $(this).find('div').removeClass('nav-box')
                }
            })
            //当前选中
            $(this).addClass('a_active')
            $(this).find('.li-a').addClass('active')
            // 打开右侧箭头
            $(this).find('.bx-chevron-right').css('transform', 'rotateZ(90deg)')
            $(this).find('.bx-chevron-right').css('transition', 'all .5s')
            $(this).addClass('nav-show')
            // $(this).find('div').addClass('nav-box')
        })
        /* 二级菜单a点击事件 */
        $(".li-a-a").click(function () {
            $(".li-a-a").each(function () {
                $(this).removeClass('active-li-a');
            })
            $(this).addClass('active-li-a');
        })

    })
    const vue = new Vue({
        el: '#app',
        data: {
            navLeftFlag: true
        },
        methods: {
            isShowLeft() {
                if (this.navLeftFlag) {
                    this.$refs.navRight.style.paddingLeft = '0px'
                    this.$refs.cPage.style.left = '0px';
                    this.navLeftFlag = false;
                } else {
                    this.$refs.navRight.style.paddingLeft = '240px';
                    this.$refs.cPage.style.left = '240px';
                    this.navLeftFlag = true;
                }
            }
        }
    })
</script>
</body>
</html>