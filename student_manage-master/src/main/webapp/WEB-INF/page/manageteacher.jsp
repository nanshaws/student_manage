<%--
  Created by IntelliJ IDEA.
  User: SYJ
  Date: 2021/4/21
  Time: 19:52
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
    <title>教师信息管理</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/page.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/bootstrap.min.css"/>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
<div>
    <input class="btn btn-success btn-sm" type="button" value="新增" onclick="showaddmodal()">
    <table style="width: 100%;border-spacing: 0;border: 1px solid darkgrey;">
        <thead>
        <tr style="background-color:gainsboro">
            <th class="tdbga" style="text-align: center;width:90px;border: 1px solid #d0d0d0;color: #404060;">工号</th>
            <th class="tdbga" style="text-align: center;width:90px;border: 1px solid #d0d0d0;color: #404060;">姓名</th>
            <th class="tdbga" style="text-align: center;width:140px;border: 1px solid #d0d0d0;color: #404060;">性别</th>
            <th class="tdbga" style="text-align: center;width:140px;border: 1px solid #d0d0d0;color: #404060;">出生日期</th>
            <th class="tdbga" style="text-align: center;width:60px;border: 1px solid #d0d0d0;color: #404060;">职称</th>
            <th class="tdbga" style="text-align: center;width:60px;border: 1px solid #d0d0d0;color: #404060;">院系</th>
            <th class="tdbga" style="text-align: center;width:120px;border: 1px solid #d0d0d0;color: #404060;">操作</th>
        </tr>
        </thead>
        <tbody id="TbData" style="text-align:center"></tbody>
    </table>
    <div style="text-align: center;margin-top: 50px">
        <div id="pager" class="pager clearfix"></div>
    </div>
</div>
<%-- 修改教师信息模态框 --%>
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="edit_teacher">教师信息修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="edit_id" class="col-sm-2 control-label">教师工号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_id" disabled name="edit_id"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_name" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_name" placeholder="2-5位中文名/20位以内英文名"
                                   name="edit_name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_sex" class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_sex" placeholder="男/女" name="edit_sex"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_password" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_password" placeholder="8-16位，必须含有数字&字母"
                                   name="edit_password"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_duty" class="col-sm-2 control-label">职称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_duty" placeholder="讲师/副教授/教授"
                                   name="edit_duty"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary edit">保存修改</button>
            </div>
        </div>
    </div>
</div>
<%-- 录入教师信息模态框 --%>
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="add_teacher">录入教师信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="add_name" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_name" placeholder="2-5位中文名/20位以内英文名" name="add_name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_sex" class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_sex" placeholder="男/女" name="add_sex"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_birthday" class="col-sm-2 control-label">出生日期</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_birthday" placeholder="格式:1999-04-25"
                                   name="add_birthday"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_password" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_password" placeholder="默认密码:123" disabled
                                   name="add_password"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_duty" class="col-sm-2 control-label">职称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_duty" placeholder="讲师/副教授/教授"
                                   name="add_duty"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_did" class="col-sm-2 control-label">所属院系代码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_did" placeholder="格式:3304xx"
                                   name="add_did"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary add">上传数据</button>
            </div>
        </div>
    </div>
</div>
<script src="<%=basePath%>static/js/jquery.Teacher-pager.js" type="text/javascript" charset="utf-8"></script>
<script>
    // 时间戳转日期格式
    function change(data) {
        const date = new Date(data);
        const Y = date.getFullYear() + '年';
        const M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '月';
        const D = (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) + '日';
        return Y + M + D;
    }

    // 实现分页  异步加载获得所有教师信息
    // 大部分实现在jquery.Teacher-pager.js文件中
    $("#pager").zPager({
        pageData: 16,
        htmlBox: $('table'),
        url: 'man/getAllTeacher.do',
        btnShow: true,
        ajaxSetData: true
    });

    // 显示修改信息模态框
    function showTeacherEditModal(id) {
        $("#editModal").modal("show")
        $("#edit_id").val(id)
        $.ajax({
            type: "get",
            url: "man/getTeacherById.do",
            data: {teaId: id},
            success: function (data) {
                $("#edit_name").val(data.name)
                $("#edit_sex").val(data.sex)
                $("#edit_password").val(data.password)
                $("#edit_duty").val(data.duty)
            }
        })
    }

    // 显示增加教师模态框
    function showaddmodal() {
        $("#addModal").modal("show")
    }

    // 提交修改信息
    $(".edit").click(function () {
        var id = $("input[name='edit_id']").val()
        var name = $("input[name='edit_name']").val()
        var sex = $("input[name='edit_sex']").val()
        var password = $("input[name='edit_password']").val()
        var duty = $("input[name='edit_duty']").val()
        var data = {id: id, name: name, sex: sex, password: password, duty: duty}
        $.ajax({
            type: "post",
            url: "man/modifyTeacherInfo.do",
            contentType: "application/json",
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
    })

    // 删除教师信息
    function deleteTeacherInfo(teaId) {
        if (confirm("确认要删除该教师信息吗？")) {
            $.ajax({
                type: "delete",
                url: "man/deleteTeacherInfo.do/" + teaId,
                success: function () {
                    alert("删除成功！")
                    location.reload()
                },
                error: function () {
                    alert("删除失败！");
                }
            })
        }
    }

    // 录入教师信息
    $(".add").click(function () {
        var name = $("input[name='add_name']").val()
        var sex = $("input[name='add_sex']").val()
        var birthday = $("input[name='add_birthday']").val()
        var duty = $("input[name='add_duty']").val()
        var did = $("input[name='add_did']").val()
        var data = {name: name, sex: sex, birthday: birthday, duty: duty, did: did}
        $.ajax({
            type: "post",
            url: "man/addTeacherInfo.do",
            contentType: "application/json",
            dataType: "json",
            data: JSON.stringify(data),  // 后台RequestBody接受的数据需要时json字符串,而不是json对象
            success: function (data) {
                if (data.code === 200) {
                    alert("上传成功！")
                    location.reload()
                } else if (data.code === 10005) {
                    for (var msg in data.otherMsg) {
                        alert(data.otherMsg[msg])
                    }
                }
            },
            error: function () {
                alert("上传失败！");
            }
        })
    })
</script>
</body>
</html>
