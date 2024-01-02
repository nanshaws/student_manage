<%--
  Created by IntelliJ IDEA.
  User: SYJ
  Date: 2021/4/16
  Time: 16:55
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>退课界面</title>
    <base href="<%=basePath%>">
    <link href="<%=basePath%>static/css/button.css" type="text/css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<div style="text-align: center">
    <h2><span style="color: #06d2eb">查询选课界面</span></h2>
    <form method="post" action="student/queryAllScore.action">
        学年：<select id="term" name="term">
        <option>2020-2021学年</option>
        <option>2019-2020学年</option>
    </select>
        学期：<select id="semester" name="semester">
        <option>第一学期</option>
        <option>第二学期</option>
    </select>
        <input class="btn btn-primary btn-sm" type="button" value="查询" onclick="showOptCourse()">
    </form>
    <div>
        <table style="width: 100%;border-spacing: 0;border: 1px solid darkgrey;">
            <thead>
            <tr style="background-color:gainsboro">
                <th class="tdbga" style="text-align: center;width:90px;border: 1px solid #d0d0d0;color: #404060;">是否退选
                </th>
                <th class="tdbga" style="text-align: center;width:90px;border: 1px solid #d0d0d0;color: #404060;">课程号
                </th>
                <th class="tdbga" style="text-align: center;width:140px;border: 1px solid #d0d0d0;color: #404060;">
                    课程名称
                </th>
                <th class="tdbga" style="text-align: center;width:60px;border: 1px solid #d0d0d0;color: #404060;">学分
                </th>
                <th class="tdbga" style="text-align: center;width:120px;border: 1px solid #d0d0d0;color: #404060;">
                    课程类型
                </th>
            </tr>
            </thead>
            <tbody id="TbData" style="text-align:center"></tbody>
        </table>
    </div>
    <br>
    <input class="btn btn-warning btn-sm" type="button" value="申请退课" onclick="submitDeleteOptCourse()">
</div>
<script>
    // 查询已选课程
    function showOptCourse() {
        // 获得下拉选框的内容
        var term = $("#term").val()
        var semester = $("#semester").val()
        $("#TbData").empty();  // 每次查询清空表格
        $.get("student/queryAllOptScore.action", {"term": term, "semester": semester}, function (data) {
            if ("[null]" === JSON.stringify(data) || "[]" === JSON.stringify(data)) {
                alert("当前学期，你未选任何课程！")
            }
            for (var d of data) {
                var $trTemp = $('<tr></tr>');

                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'><input type='radio' name='check' value='" + d.courseId + "'></td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.courseId + "</td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.optcourse.name + "</td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.optcourse.score + "</td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.optcourse.kind + "</td>");
                $("#TbData").append($trTemp);
                $trTemp.appendTo("#TbData");
            }
        })
    }

    // 提交退课申请
    function submitDeleteOptCourse() {
        // 获得radio的值
        var value = $("input[name='check']:checked").val();
        if ($("input").is(":checked")) {
            var courseId = value;
        }
        if (confirm("你确认要退课吗？")) {
            $.ajax({
                type: "delete",
                url: "student/deleteCourse.action/" + courseId,
                success: function () {
                    alert("退课成功！");
                    location.reload();
                },
                error: function () {
                    alert("退课失败！");
                }
            })
        }
    }
</script>
</body>
</html>
