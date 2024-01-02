<%@ page import="cn.student.entity.Student" %>
<%--
  Created by IntelliJ IDEA.
  User: SYJ
  Date: 2021/4/16
  Time: 14:25
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    Student student = (Student) request.getSession().getAttribute("STUDENT_SESSION");
    Integer id = student.getId();
%>
<html>
<head>
    <title>学生信息界面</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/bootstrap.min.css"/>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body style="background: url(<%=basePath%>static/img/info.jpg)">
<div>
    <p>姓名：<%=student.getName()%>
    </p>
    <p>性别：<%=student.getSex()%>
    </p>
    <p>班级：<%=student.getClassId()%>
    </p>
    <p>专业：<%=student.getMajor().getMajorName()%>
    </p>
    <p>院系：<%=student.getDept().getDeptName()%>
    </p>
    <p>联系电话：<%=student.getPhone()%>
    </p>
    <p>籍贯：<%=student.getAddress()%>
    </p>
    <p>入学时间：<fmt:formatDate value="<%=student.getEnrollTime()%>" type="date" pattern="yyyy年MM月dd日"/>
    </p>
    <button class="btn btn-primary btn-lg" onclick="showInfoModal(<%=id%>)">
        <span class="glyphicon glyphicon-edit"></span>&nbsp;修改个人信息
    </button>
</div>

<%-- 修改个人信息模态框 --%>
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="edit_student">个人信息修改</h4>
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
                    <div class="form-group">
                        <label for="edit_address" class="col-sm-2 control-label">籍贯</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_address" placeholder="具体到县市区"
                                   name="edit_address"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_phone" class="col-sm-2 control-label">联系方式</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_phone" placeholder="必填"
                                   name="edit_phone"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateStudentInfo(<%=id%>)">保存修改</button>
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
            url: "manager/getStudentById.do",
            data: {stuId: id},
            success: function (data) {
                $("#edit_address").val(data.address)
                $("#edit_phone").val(data.phone)
                $("#edit_password").val(data.password)
            }
        })
    }

    // 修改个人信息
    function updateStudentInfo(id) {
        var password = $("input[name='edit_password']").val();
        var phone = $("input[name='edit_phone']").val();
        var address = $("input[name='edit_address']").val();
        var data = {id: id, password: password, phone: phone, address: address}
        $.ajax({
            type: "post",
            url: "student/updateInfo.action",
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
