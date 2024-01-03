<%--
  Created by IntelliJ IDEA.
  User: CYL
  Date: 2021/4/16
  Time: 16:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>选课界面</title>
    <base href="<%=basePath%>">
    <link href="<%=basePath%>static/css/button.css" type="text/css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<div style="text-align: center">
    <marquee behavior="alternate"><strong><span style="color: red">每种类型课程只可选择一门</span></strong></marquee>
    <h2><span style="color: #b3adf4">选课界面</span></h2>
    <form method="post" action="student/queryAllCourse.action">
        学年：<select id="term" name="term">
        <option>2020-2021学年</option>
        <option>2019-2020学年</option>
    </select>
        学期：<select id="semester" name="semester">
        <option>第一学期</option>
        <option>第二学期</option>
    </select>
        课程类型：<select id="kind" name="semester">
        <option>教师教育类</option>
        <option>科学素养类</option>
        <option>人文素养类</option>
        <option>艺术素养类</option>
    </select>
        <input class="btn btn-primary btn-sm" type="button" value="查询" onclick="showOptCourse()">
    </form>
    <div>
        <table style="width: 100%;border-spacing: 0;border: 1px solid darkgrey;">
            <thead>
            <tr style="background-color:gainsboro">
                <th class="tdbga" style="text-align: center;width:90px;border: 1px solid #d0d0d0;color: #404060;">勾选课程
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
                <th class="tdbga" style="text-align: center;width:80px;border: 1px solid #d0d0d0;color: #404060;">授课教师
                </th>
            </tr>
            </thead>
            <tbody id="TbData" style="text-align:center"></tbody>
        </table>
    </div>
    <br>
    <input class="btn btn-success btn-sm" type="button" value="提交选课" onclick="submitOptCourse()">
</div>
<script>
    // 查询可选修课程
    function showOptCourse() {
        // 获得下拉选框的内容
        var term = $("#term").val()
        var semester = $("#semester").val()
        var kind = $("#kind").val()
        $("#TbData").empty();  // 每次查询清空表格
        $.get("student/queryAllCourse.action", {"term": term, "semester": semester, "kind": kind}, function (data) {
            if ("[null]" === JSON.stringify(data) || "[]" === JSON.stringify(data)) {
                alert("当前学期，" + kind + "课程无可选课程！")
            }
            for (var d of data) {
                var $trTemp = $('<tr></tr>');

                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'><input type='radio' name='check' value='" + d.id + "'></td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.id + "</td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.name + "</td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.score + "</td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.kind + "</td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.teacher.name + "</td>");
                $("#TbData").append($trTemp);
                $trTemp.appendTo("#TbData");
            }
        })
    }

    // 提交选课结果
    function submitOptCourse() {
        // 获得radion的值
        var value = $("input[name='check']:checked").val();
        if ($("input").is(":checked")) {
            var courseId = value;
        }
        if (confirm("你确认要选修此课程吗？")) {
            $.ajax({
                type: "post",
                url: "student/chooseCourse.action",
                data: {"courseId": courseId},
                success: function () {
                    alert('选课成功！');
                },
                error: function () {
                    alert('选课失败！')
                }
            })
        }
    }
</script>
</body>
</html>
