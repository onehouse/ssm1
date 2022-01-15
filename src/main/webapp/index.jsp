<%--
  Created by IntelliJ IDEA.
  User: 6666
  Date: 2022/1/12
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
                request.getServerPort() + request.getContextPath() + "/";
    %>
    <base href="<%=basePath%>">
    <title>Title</title>
</head>
<body>
<div align="center">
    <p>欢迎页面！</p>
    <img src="images/welcome.png" width="300" height="300">
</div>
<table align="center">
    <tr>
        <td><a href="studentRegister.jsp">学生注册</a></td>
    </tr>
    <tr>
        <td><a href="studentQueryAll.jsp">学生查询</a></td>
    </tr>
</table>
</body>
</html>
