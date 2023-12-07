<%@ page import="com.model1.BoardDTO" %>
<%@ page import="com.model1.BoardDAO" %>
<%@ page import="com.util.JSFunction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<jsp:include page="IsLoggedIn.jsp"></jsp:include>
<%
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    // 폼 값을 DTO 객체에 저장
    BoardDTO dto = new BoardDTO();
    dto.setTitle(title);
    dto.setContent(content);
    dto.setId(session.getAttribute("UserId").toString());

    // DAO 객체를 통해 DB에 DTO 저장
    BoardDAO dao = new BoardDAO();
    int iResult = dao.insertWrite(dto);
    dao.close();

    if(iResult == 1){ // 성공 했을때
        response.sendRedirect("List.jsp");
    }else{ // 실패
        JSFunction.alertBack("글쓰기 실패", out);
    }

%>
