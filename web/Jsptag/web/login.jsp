<%--
  Created by IntelliJ IDEA.
  User: Geralyn
  Date: 2019/4/15
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

<head>
    <base href="<%=basePath%>">
    <title>$Title$</title>
</head>

<body>
<a href="<c:url value="/aaa"></c:url>">点击一下</a>
<c:url value="/mytag.jsp">
    <c:param name="user" value="张三"/>
</c:url>
<c:choose>
    <c:when test="${empty param.name}">
        <c:out value="没有给出名为name的参数"></c:out>
    </c:when>
    <c:otherwise>
        <c:out value="${param.name}">
        </c:out>
    </c:otherwise>
</c:choose>
<c:forEach var="i" begin="1" end="10" step="2">
    ${i}
</c:forEach>

<%
    String[] strs = {"one","two"};
    request.setAttribute("strs",strs);
%>
<c:forEach items="${strs}" var="str">
    ${str}<br>
</c:forEach>

<%
    ArrayList<String> list = new ArrayList<String>();
    list.add("one");
    list.add("two");
    list.add("three");

    pageContext.setAttribute("list",list);
%>
<hr>
<c:forEach items="${list}" var="ele" varStatus="vs">
    ${vs.index}${vs.count} ${vs.first}${vs.last}${vs.current}<br>
</c:forEach>
<hr>
<%
    Date date = new Date();
    request.setAttribute("date",date);
%>
<fmt:formatDate value="${requestScope.date}" pattern="yyyy-mm-dd HH:mm:ss"></fmt:formatDate>
<hr>
<%
    request.setAttribute("num1",3.141592653);
%>
<fmt:formatNumber value="${requestScope.num1}" pattern="0.000"></fmt:formatNumber>

</body>

</html>
