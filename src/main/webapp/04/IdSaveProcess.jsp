<%@ page import="com.util.CookieManager" %>
<%@ page import="com.util.JSFunction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String user_id = request.getParameter("user_id");
    String user_pw = request.getParameter("user_pw");
    String save_check = request.getParameter("save_check");

    if(save_check != null && save_check.equals("Y")){
        CookieManager.makeCookie(response, "loginId", user_id, 86400);
    }else{
        CookieManager.deleteCookie(response, "loginId");
    }
    if("must".equals(user_id) && "1234".equals(user_pw)){
        //로그인 성공
        JSFunction.alertLocation("로그인 성공", "IdSaveMain.jsp", out);
    }else{
        JSFunction.alertBack("로그인 실패", out);
    }
%>
