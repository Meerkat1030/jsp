<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>import</title>
</head>
<body>
    <c:set var="requestVar" value="MustHave" scope="request"></c:set>
    <c:import url="OtherPage.jsp" var="contents">
        <c:param name="user_param1" value="JSP"></c:param>
        <c:param name="user_param2" value="기본서"></c:param>
    </c:import>

    <h4>다른 문서 삽입하기</h4>
    ${ contents }

    <h4>외부문서 삽입하기</h4>
    <iframe src="GoldPage.jsp" style="width: 100%;height: 600px;"></iframe>
</body>
</html>
