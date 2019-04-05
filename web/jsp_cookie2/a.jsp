<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cookie的maxAge</title>
</head>
<body>
    <h1>cookie的maxAge</h1>
    <!--默认到期时间 : 浏览会话结束时-->
    <%
        Cookie cookie1 = new Cookie("aaa","1AA");
        cookie1.setMaxAge(60*60);//设置了一小时
        response.addCookie(cookie1);
    %>
</body>
</html>

