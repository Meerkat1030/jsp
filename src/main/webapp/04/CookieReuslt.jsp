<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>2. 쿠키 설정 직후 쿠키 확인</h2>
    <%
        Cookie[] cookies = request.getCookies(); // request 헤더에서 모든 쿠키 가져오기
        if(cookies != null){
            for(Cookie c : cookies){
                String cName = c.getName();
                String cVlaue = c.getValue();

                out.println(String.format("%s : %s <br/>", cName, cVlaue));
            }
        }
    %>
</body>
</html>
