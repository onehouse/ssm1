<%--
  Created by IntelliJ IDEA.
  User: 6666
  Date: 2022/1/12
  Time: 12:33
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

<h1 align="center">
    注册信息
</h1>

<h3 align="center">
    ${msg}
    <br/>
    <a href="index.jsp">返回初始页面</a>
</h3>



</body>
</html>
