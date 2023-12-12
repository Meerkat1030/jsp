<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>redirect</title>
</head>
<body>
    <c:set var="requestVar" value="MustHave" scope="request"></c:set>
    <c:redirect url="OtherPage.jsp">
        <c:param name="user_param1" value="출판사"></c:param>
        <c:param name="user_param2" value="골든래빗"></c:param>
    </c:redirect>
</body>
</html>
