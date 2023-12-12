<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- 변수 선언 --%>
<c:set var="scopeVar" value="Page Value"></c:set>
<c:set var="scopeVar" value="Request Value" scope="request"></c:set>
<c:set var="scopeVar" value="Session Value" scope="session"></c:set>
<c:set var="scopeVar" value="Application Value" scope="application"></c:set>
<html>
<head>
    <title>remove</title>
</head>
<body>
    <h2>출력하기</h2>
    <ul>
        <li>scopeVar : ${scopeVar}</li>
        <li>requestScope.scopeVar : ${requestScope.scopeVar}</li>
        <li>sessionScope.scopeVar : ${sessionScope.scopeVar}</li>
        <li>applicationScope.scopeVar : ${applicationScope.scopeVar}</li>
    </ul>

    <h2>session 영역에서 삭제</h2>
    <c:remove var="scopeVar" scope="request"></c:remove>
    <ul>
        <li>scopeVar : ${scopeVar}</li>
        <li>requestScope.scopeVar : ${requestScope.scopeVar}</li>
        <li>sessionScope.scopeVar : ${sessionScope.scopeVar}</li>
        <li>applicationScope.scopeVar : ${applicationScope.scopeVar}</li>
    </ul>

    <h2>scope 지정없이 삭제</h2>
    <c:remove var="scopeVar"></c:remove>
    <ul>
        <li>scopeVar : ${scopeVar}</li>
        <li>requestScope.scopeVar : ${requestScope.scopeVar}</li>
        <li>sessionScope.scopeVar : ${sessionScope.scopeVar}</li>
        <li>applicationScope.scopeVar : ${applicationScope.scopeVar}</li>
    </ul>
</body>
</html>
