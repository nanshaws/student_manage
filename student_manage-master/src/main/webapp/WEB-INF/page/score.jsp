<%--
  Created by IntelliJ IDEA.
  User: SYJ
  Date: 2021/4/15
  Time: 14:24
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>必修课成绩</title>
    <base href="<%=basePath%>">
    <link href="<%=basePath%>static/css/button.css" type="text/css" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<div style="text-align: center">
    <h2><span style="color: orange">必修课成绩查询</span></h2>
    <form method="post" action="student/queryAllScore.action">
        学年：<select id="term" name="term">
        <option>2020-2021学年</option>
        <option>2019-2020学年</option>
    </select>
        学期：<select id="semester" name="semester">
        <option>第一学期</option>
        <option>第二学期</option>
    </select>
        <input class="btn btn-primary btn-sm" type="button" value="查询" onclick="showScore()">
    </form>
    <div>
        <table style="width: 100%;border-spacing: 0;border: 1px solid darkgrey;">
            <thead>
            <tr style="background-color:gainsboro">
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
                <th class="tdbga" style="text-align: center;width:80px;border: 1px solid #d0d0d0;color: #404060;">
                    必修课成绩
                </th>
            </tr>
            </thead>
            <tbody id="TbData" style="text-align:center"></tbody>
        </table>
    </div>
</div>
<script>
    // 查询必修课成绩
    function showScore() {
        // 获得下拉选框的内容
        var term = $("#term").val()
        var semester = $("#semester").val()
        $("#TbData").empty();  // 每次查询清空表格
        $.get("student/queryAllScore.action", {"term": term, "semester": semester}, function (data) {
            if ("[null]" === JSON.stringify(data) || "[]" === JSON.stringify(data)) {
                alert("查询成绩为空！请等待教师登记成绩！")
            }
            for (var d of data) {
                var flag = Number(d.score)
                var $trTemp = $('<tr></tr>');

                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.courseId + "</td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.course.name + "</td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.course.score + "</td>");
                $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.course.kind + "</td>");
                if (flag < 60) {
                    $trTemp.append("<td style='border: 1px solid #d0d0d0;color: red;'>" + d.score + "</td>");
                } else {
                    $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.score + "</td>");
                }
                $("#TbData").append($trTemp);
                $trTemp.appendTo("#TbData");
            }
        })
    }
</script>
</body>
</html>
