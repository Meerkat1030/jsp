<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>fmt 1</title>
</head>
<body>
    <h4>숫자 포멧 설정</h4>
    <c:set var="num1" value="12345"></c:set>
    콤마 o : <fmt:formatNumber value="${num1}"></fmt:formatNumber><br/>
    콤마 o : <fmt:formatNumber value="${num1}" groupingUsed="false"></fmt:formatNumber><br/>
    <fmt:formatNumber value="${num1}" type="currency" var="printNum1"></fmt:formatNumber>
    통화기호 : ${printNum1}<br/>
    <fmt:formatNumber var="printNum2" type="percent" value="0.03"></fmt:formatNumber>
    퍼센트 : ${printNum2}<br/>

    <h4>문자열을 숫자로 변경</h4>
    <c:set var="num2" value="6,789.01"></c:set>
    <fmt:parseNumber value="${num2}" pattern="00,000.00" var="printNum3"></fmt:parseNumber>
    소수점까지 : ${printNum3}<br/>
    <fmt:parseNumber value="${num2}" integerOnly="true" var="printNum4"></fmt:parseNumber>
    정수 부분만 : ${printNum4}

    <h4>날짜 포맷</h4>
    <c:set var="today" value="<%= new java.util.Date()%>"></c:set>

    full : <fmt:formatDate value="${today}" type="date" dateStyle="full"/> <br/>
    short : <fmt:formatDate value="${today}" type="date" dateStyle="short"/> <br/>
    long : <fmt:formatDate value="${today}" type="date" dateStyle="long"/> <br/>
    default : <fmt:formatDate value="${today}" type="date" dateStyle="default"/>

    <h4>시간 포맷</h4>
    full : <fmt:formatDate value="${today}" type="time" timeStyle="full"/> <br/>
    short : <fmt:formatDate value="${today}" type="time" timeStyle="short"/> <br/>
    long : <fmt:formatDate value="${today}" type="time" timeStyle="long"/> <br/>
    default : <fmt:formatDate value="${today}" type="time" timeStyle="default"/>

    <h4>날짜/시간 표시</h4>
    <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/>
    <br/>
    <fmt:formatDate value="${today}" type="both" pattern="yyyy-MM-dd hh:mm:ss"/>

    <h4>타임존 설정</h4>
    <fmt:timeZone value="GMT">
        <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/><br/>
    </fmt:timeZone>
    <fmt:timeZone value="America/Chicago">
        <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/>
    </fmt:timeZone>

    <h4>로케일 설정</h4>
    <c:set var="today" value="<%= new java.util.Date()%>"/>
    한글로 설정 : <fmt:setLocale value="ko_kr"/>
    <fmt:formatNumber value="10000" type="currency" />
    <fmt:formatDate value="${today}" /> <br/>

    일어로 설정 : <fmt:setLocale value="ja_JP"/>
    <fmt:formatNumber value="10000" type="currency"/>
    <fmt:formatDate value="${today}" /> <br/>

    영어로 설정 : <fmt:setLocale value="en_US"/>
    <fmt:formatNumber value="10000" type="currency"/>
    <fmt:formatDate value="${today}" /> <br/>
</body>
</html>
