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

    <script type="text/javascript">
        function ajaxQueryAll() {
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function () {
                if(xhr.readyState == 4 && xhr.status == 200) {
                    var table = document.getElementById("table");
                    var data = xhr.responseText;
                    data = JSON.parse(data);
                    table.innerHTML = "<tr><td>学号</td><td>姓名</td><td>年龄</td></tr>";
                    for(var i = 0; i < data.length; i++) {
                        var tr = document.createElement("tr");
                        var td1 = document.createElement("td");
                        var td2 = document.createElement("td");
                        var td3 = document.createElement("td");
                        td1.innerText = data[i].id;
                        td2.innerText = data[i].name;
                        td3.innerText = data[i].age;
                        tr.appendChild(td1);
                        tr.appendChild(td2);
                        tr.appendChild(td3);
                        table.appendChild(tr);
                    }
                }
            };
            xhr.open("get", "student/queryAll.do",true);
            xhr.send();
        }
    </script>
</head>
<body onload="ajaxQueryAll()">

<center><h4>学生查询</h4></center>
<table border="2" align="center" id="table">

</table>
<center>
    <input type="button" value="查询学生" id="btn01" onclick="ajaxQueryAll()"><br/>
    <a href="index.jsp">返回初始页面</a>
</center>


</body>
</html>
