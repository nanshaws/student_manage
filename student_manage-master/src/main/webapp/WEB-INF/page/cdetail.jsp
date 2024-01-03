<%@ page import="cn.student.entity.Teacher" %>
<%--
  Created by IntelliJ IDEA.
  User: CYL
  Date: 2021/4/18
  Time: 18:05
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
    <title>选课详情</title>
    <base href="<%=basePath%>">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<div style="text-align: center">
    <h2><span style="color: orange">学生选课详情</span></h2>
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
                <th class="tdbga" style="text-align: center;width:140px;border: 1px solid #d0d0d0;color: #404060;">专业
                </th>
                <th class="tdbga" style="text-align: center;width:140px;border: 1px solid #d0d0d0;color: #404060;">
                    所属院系
                </th>
            </tr>
            </thead>
            <tbody id="TbData" style="text-align:center"></tbody>
        </table>
    </div>
</div>
<script>
    $("#TbData").empty();  // 每次查询清空表格
    $.get("teacher/queryChooseStudent.action", function (data) {
        if ("[null]" === JSON.stringify(data) || "[]" === JSON.stringify(data)) {
            alert("当前无学生选修此课程！")
        }
        for (var d of data) {
            var $trTemp = $('<tr></tr>');

            $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.id + "</td>");
            $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.name + "</td>");
            $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.major.majorName + "</td>");
            $trTemp.append("<td style='border: 1px solid #d0d0d0;color: #404060;'>" + d.dept.deptName + "</td>");
            $("#TbData").append($trTemp);
            $trTemp.appendTo("#TbData");
        }
    })
</script>
</body>
</html>
