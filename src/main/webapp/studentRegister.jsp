<%--
  Created by IntelliJ IDEA.
  User: 6666
  Date: 2022/1/12
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
        request.getServerPort()  + request.getContextPath() + "/";
    %>
    <base href="<%=basePath%>">
    <title>Title</title>
</head>
<body>

<center><h4>学生注册</h4></center>
<form action="student/add.do" method="get">
    <table border="2" align="center">
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="注册" ></td>
        </tr>
    </table>
</form>
</body>
</html>
