<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>액션 태그 - UswBean</title>
</head>
<body>
    <h3>액션 태그로 폼값 한 번에 받기</h3>
    <jsp:useBean id="person" class="com.common.Person"></jsp:useBean>
    <jsp:setProperty name="person" property="*"></jsp:setProperty>

    <ul>
        <li>이름 : <jsp:getProperty name="person" property="name"/></li><br/>
        <li>나이 : <jsp:getProperty name="person" property="age"/></li><br/>
    </ul>
</body>
</html>
