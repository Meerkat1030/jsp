<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-30
  Time: 오후 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="IncludeFile.jsp"%>
<html>
<head>
    <title>Include 지시어</title>
</head>
<body>
    <%
        out.println("오늘 날짜 " + today);
        out.println("내일 날짜 " + tomorrow);
    %>

</body>
</html>
