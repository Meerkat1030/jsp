<%@ page import="com.common.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>컬랙션 이용하기</h2>
    <%
        ArrayList<Person> pList = new ArrayList<Person>();
        pList.add(new Person("성상문", 55));
        pList.add(new Person("박팽년", 60));
    %>
    <c:set var="personList" value="<%= pList%>" scope="request"></c:set>
    <ul>
        <li>이름 : ${requestScope.personList[0].name}</li>
        <li>나이 : ${personList[0].age}</li>
    </ul>

    <h2>Map 컬렉션</h2>
    <%
        Map<String, Person> pMap = new HashMap<String, Person>();
        pMap.put("personArgs1", new Person("하위지", 65));
        pMap.put("personArgs2", new Person("이개", 65));

    %>
    <c:set var="personMap" value="<%= pMap%>" scope="request"></c:set>
    <ul>
        <li>이름 : ${requestScope.personMap.personArgs2.name}</li>
        <li>나이 : ${personMap.personArgs2.age}</li>
    </ul>
</body>
</html>
