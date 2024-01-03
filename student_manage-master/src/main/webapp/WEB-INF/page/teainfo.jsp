<%@ page import="cn.student.entity.Teacher" %>
<%--
  Created by IntelliJ IDEA.
  User: CYL
  Date: 2021/4/16
  Time: 14:26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    Teacher teacher = (Teacher) request.getSession().getAttribute("TEACHER_SESSION");
    String identity;
    if (teacher.getManager() == 1) {
        identity = "管理员";
    } else {
        identity = "普通教师";
    }
    Integer id = teacher.getId();
%>
<html>
<head>
    <title>教师信息界面</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/bootstrap.min.css"/>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body style="background: url(<%=basePath%>static/img/info.jpg)">
<p>姓名：<%=teacher.getName()%>
</p>
<p>性别：<%=teacher.getSex()%>
</p>
<p>职称：<%=teacher.getDuty()%>
</p>
<p>院系：<%=teacher.getDept().getDeptName()%>
</p>
<p>身份：<%=identity%>
</p>
<button class="btn btn-primary btn-lg" onclick="showInfoModal(<%=id%>)">
    <span class="glyphicon glyphicon-edit"></span>&nbsp;修改个人信息
</button>
<%-- 修改个人信息模态框 --%>
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="edit_teacher">个人信息修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="edit_password" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_password" placeholder="8-16位，必须含有数字&字母"
                                   name="edit_password"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateTeacheInfo(<%=id%>)">保存修改</button>
            </div>
        </div>
    </div>
</div>
<script>
    // 显示修改信息模态框
    function showInfoModal(id) {
        $("#editModal").modal("show")
        $.ajax({
            type: "get",
            url: "manager/getTeacherById.do",
            data: {teaId: id},
            success: function (data) {
                $("#edit_password").val(data.password)
            }
        })
    }

    // 修改个人信息
    function updateTeacheInfo(id) {
        var password = $("input[name='edit_password']").val();
        var data = {id: id, password: password}
        $.ajax({
            type: "post",
            url: "teacher/updateInfo.action",
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            data: JSON.stringify(data),  // 后台RequestBody接受的数据时需要json字符串,而不是json对象
            success: function (data) {
                if (data.code === 200) {
                    alert("修改成功！")
                    location.reload()
                } else if (data.code === 10005) {
                    for (var msg in data.otherMsg) {
                        alert(data.otherMsg[msg])
                    }
                }
            },
            error: function () {
                alert("修改失败！");
            }
        })
    }
</script>
</body>
</html>
