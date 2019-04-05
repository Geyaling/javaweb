<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>从session中取出数据</title>
</head>
<body>
    <h1>从session中取出数据</h1>
    <%
        String m = (String)session.getAttribute("aaa");
    %>
    <%=m%>
</body>
</html>
