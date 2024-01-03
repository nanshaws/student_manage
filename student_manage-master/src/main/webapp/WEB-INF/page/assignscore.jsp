<%@ page import="cn.student.entity.Teacher" %>
<%--
  Created by IntelliJ IDEA.
  User: CYL
  Date: 2021/4/18
  Time: 18:24
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    Teacher teacher = (Teacher) request.getSession().getAttribute("TEACHER_SESSION");
    String courseName = teacher.getOptcourse().getName();
%>
<html>
<head>
    <title>成绩登记</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/bootstrap.min.css"/>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
<div style="text-align: center">
    <h2><span style="color: greenyellow">成绩登记界面</span></h2>
    当前课程：<strong><span style="color: darkseagreen"><%=courseName%></span></strong>
    <div>
        <table style="width: 100%;border-spacing: 0;border: 1px solid darkgrey;">
            <thead>
            <tr style="background-color:gainsboro">
                <th class="tdbga" style="text-align: center;width:90px;border: 1px solid #d0d0d0;color: #404060;">学生学号
                </th>
                <th class="tdbga" style="text-align: center;width:140px;border: 1px solid #d0d0d0;color: #404060;">
                    学生姓名
                </th>
                <th class="tdbga" style="text-align: center;width:140px;border: 1px solid #d0d0d0;color: #404060;">成绩
                </th>
                <th class="tdbga" style="text-align: center;width:140px;border: 1px solid #d0d0d0;color: #404060;">
                    成绩登记
                </th>
            </tr>
            </thead>
            <tbody id="TbData" style="text-align:center"></tbody>
        </table>
    </div>
</div>
<%-- 成绩登记模态框 --%>
<div class="modal fade" id="assignModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="assign_studentscore">成绩登记</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="assign_stuId" class="col-sm-2 control-label">学生学号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="assign_stuId" disabled name="assign_stuId"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="assign_name" class="col-sm-2 control-label">学生姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="assign_name" disabled name="assign_name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="assign_score" class="col-sm-2 control-label">学生成绩</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="assign_score" name="assign_score"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary " onclick="assignScore()">上传成绩</button>
            </div>
        </div>
    </div>
</div>
<script>
    // 显示成绩数据
    $("#TbData").empty();  // 每次查询清空表格
    $.get("teacher/queryChooseStudent.action", function (data) {
        if ("[null]" === JSON.stringify(data)) {
            alert("当前无需成绩登记！")
        }
        for (var d of data) {
            var $trTemp = $('<tr></tr>');

            $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.id + "</td>");
            $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.name + "</td>");
            if (d.stucourse === null) {
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>暂无成绩</td>");
            } else {
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.stucourse.score + "</td>");
            }
            $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" +
                "<input class='btn btn-primary btn-sm' type='button' value='登记' onclick='showAssginModal(" + d.id + ",\"" + d.name + "\")'></td>");
            $("#TbData").append($trTemp);
            $trTemp.appendTo("#TbData");
        }
    })

    // 显示成绩登记模态框
    function showAssginModal(stuId, name) {
        $("#assignModal").modal("show");
        $("#assign_stuId").val(stuId)
        $("#assign_name").val(name)
    }

    // 登记成绩
    function assignScore() {
        var stuId = $("input[name='assign_stuId']").val();
        var score = $("input[name='assign_score']").val();
        $.ajax({
            type: "post",
            url: "teacher/assignScore.action",
            contentType: "application/x-www-form-urlencoded;charset=utf-8",
            dataType: "json",
            data: {score: score, stuId: stuId},
            success: function () {
                alert("上传成功！");
                location.reload();
            },
            error: function () {
                alert("上传失败！");
            }
        })
    }
</script>
</body>
</html>
