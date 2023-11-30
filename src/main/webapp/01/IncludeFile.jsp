<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-30
  Time: 오후 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
    <%
        LocalDate today = LocalDate.now(); // 오늘 날짜
        LocalDateTime tomorrow = LocalDateTime.now().plusDays(1); // 내일 날짜
    %>
</html>
