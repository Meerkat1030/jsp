<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-30
  Time: 오후 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>page 지시어 - errorPage isErrorPage</title>
</head>
<body>
    <%
        try{
            int myAge = Integer.parseInt(request.getParameter("age")) + 10; // 에러 발생
            out.println("10년 후 당신의 나이는 " + myAge + " 입니다."); // 실행 안됨

        }catch (Exception e){
            out.println("예외 발생 : 매개변수 myAge가 null입니다.");
        }
    %>
</body>
</html>
