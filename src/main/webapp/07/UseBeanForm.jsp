<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>액션 태그 - UseBean</title>
</head>
<body>
    <h2>액션 태그로 폼값 한번에 받기</h2>
    <form method="post" action = "UseBeanAction.jsp">
        이름 : <input type="text" name="name"><br/>
        이름 : <input type="text" name="age"><br/>
        <input type = "submit" value="폼값 전송">
    </form>
</body>
</html>
