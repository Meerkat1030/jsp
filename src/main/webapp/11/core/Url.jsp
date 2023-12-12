<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Url</title>
</head>
<body>
    <c:url value="OtherPage.jsp" var="url">
        <c:param name="user_param1" value="must"></c:param>
        <c:param name="user_param2">Have</c:param>
    </c:url>
    <a href="${url}">OtherPage.jsp 바로가기</a>
</body>
</html>
