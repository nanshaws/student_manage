<%--
  Created by IntelliJ IDEA.
  User: CYL
  Date: 2021/4/21
  Time: 19:53
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
    <title>课程信息管理</title>
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
            <th class="tdbga" style="text-align: center;width:90px;border: 1px solid #d0d0d0;color: #404060;">课程号</th>
            <th class="tdbga" style="text-align: center;width:90px;border: 1px solid #d0d0d0;color: #404060;">课程名称</th>
            <th class="tdbga" style="text-align: center;width:140px;border: 1px solid #d0d0d0;color: #404060;">学分</th>
            <th class="tdbga" style="text-align: center;width:140px;border: 1px solid #d0d0d0;color: #404060;">课程类型</th>
            <th class="tdbga" style="text-align: center;width:60px;border: 1px solid #d0d0d0;color: #404060;">学期</th>
            <th class="tdbga" style="text-align: center;width:120px;border: 1px solid #d0d0d0;color: #404060;">学年</th>
            <th class="tdbga" style="text-align: center;width:120px;border: 1px solid #d0d0d0;color: #404060;">操作</th>
        </tr>
        </thead>
        <tbody id="TbData" style="text-align:center"></tbody>
    </table>
    <div style="text-align: center;margin-top: 50px">
        <div id="pager" class="pager clearfix"></div>
    </div>
</div>
<%-- 修改课程信息模态框 --%>
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="edit_optcourse">课程信息修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="edit_id" class="col-sm-2 control-label">课程号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_id" disabled name="edit_id"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_name" class="col-sm-2 control-label">课程名称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_name" placeholder="选填" name="edit_name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_score" class="col-sm-2 control-label">学分</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_score" placeholder="浮点数"
                                   name="edit_score"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_kind" class="col-sm-2 control-label">课程类型</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_kind" placeholder="教师教育类/科学素养类/人文素养类/艺术素养类"
                                   name="edit_kind"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_semester" class="col-sm-2 control-label">学期</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_semester" placeholder="选填"
                                   name="edit_semester"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_term" class="col-sm-2 control-label">学年</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_term" placeholder="选填" name="edit_term"/>
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
<%-- 录入课程信息模态框 --%>
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="add_optcourse">录入课程信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="add_name" class="col-sm-2 control-label">课程名称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_name" placeholder="2-15位中文课程名/1-30位英文课程名" name="add_name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_score" class="col-sm-2 control-label">学分</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_score" placeholder="2学分"
                                   name="add_score"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_kind" class="col-sm-2 control-label">课程类型</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_kind" placeholder="教师教育类/科学素养类/人文素养类/艺术素养类"
                                   name="add_kind"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_semester" class="col-sm-2 control-label">学期</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_semester" placeholder="格式:第一学期"
                                   name="add_semester"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_term" class="col-sm-2 control-label">学年</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_term" placeholder="格式:2020-2021学年"
                                   name="add_term"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_tid" class="col-sm-2 control-label">任课教师工号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="add_tid" placeholder="格式:27xxx"
                                   name="add_tid"/>
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
<script src="<%=basePath%>static/js/jquery.OptCourse-pager.js" type="text/javascript" charset="utf-8"></script>
<script>
    // 实现分页 异步加载获得所有课程信息
    // 大部分实现在jquery.OptCourse-pager.js文件中
    $("#pager").zPager({
        pageData: 16,
        htmlBox: $('table'),
        url: 'man/getAllOptCpurse.do',
        btnShow: true,
        ajaxSetData: true
    });

    // 显示修改信息模态框
    function showOptCourseEditModal(id) {
        $("#editModal").modal("show")
        $("#edit_id").val(id)
        $.ajax({
            type: "get",
            url: "man/getOptCourseById.do",
            data: {optcourseId: id},
            success: function (data) {
                $("#edit_name").val(data.name)
                $("#edit_score").val(data.score)
                $("#edit_kind").val(data.kind)
                $("#edit_semester").val(data.semester)
                $("#edit_term").val(data.term)
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
        var score = $("input[name='edit_score']").val()
        var kind = $("input[name='edit_kind']").val()
        var semester = $("input[name='edit_semester']").val()
        var term = $("input[name='edit_term']").val()
        var data = {id: id, name: name, score: score, kind: kind, semester: semester, term: term}
        $.ajax({
            type: "post",
            url: "man/modifyOptCourseInfo.do",
            contentType: "application/json",
            dataType: "json",
            data: JSON.stringify(data),  // 后台RequestBody接受的数据需要时json字符串,而不是json对象
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

    // 删除课程信息
    function deleteOptCourseInfo(optcourseId) {
        if (confirm("确认要删除该课程信息吗？")) {
            $.ajax({
                type: "delete",
                url: "man/deleteOptCourseInfo.do/" + optcourseId,
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

    // 录入课程信息
    $(".add").click(function () {
        var name = $("input[name='add_name']").val()
        var score = $("input[name='add_score']").val()
        var kind = $("input[name='add_kind']").val()
        var semester = $("input[name='add_semester']").val()
        var term = $("input[name='add_term']").val()
        var tid = $("input[name='add_tid']").val()
        var data = {name: name, score: score, kind: kind, semester: semester, term: term, tid: tid}
        $.ajax({
            type: "post",
            url: "man/addOptCourseInfo.do",
            contentType: "application/json",
            dataType: "json",
            data: JSON.stringify(data),  // 后台RequestBody接受的数据时需要json字符串,而不是json对象
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
