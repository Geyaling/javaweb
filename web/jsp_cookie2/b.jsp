<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除cookie</title>
</head>
<body>
<h1>删除cookie</h1>
<%
    Cookie cookie1 = new Cookie("aaa","1AA");
    cookie1.setMaxAge(0);//删除cookie
    response.addCookie(cookie1);
%>
</body>
</html>
