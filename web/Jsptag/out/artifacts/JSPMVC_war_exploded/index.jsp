<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="it" uri="/WEB-INF/hello.tld" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
</head>
<body>
    <it:MyTag test="${empty param.xxx}">
        <it:MyTag03/>
    </it:MyTag>

    <h1><it:hello/></h1>
    <h1><it:MyTag01/></h1>
    <hr>
    <%
        request.setAttribute("xxx","zhangsan");
    %>
    <h1><it:MyTag02>${xxx}</it:MyTag02></h1>
    <hr>
</body>
</html>