<%@ page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String loginId = CookieManager.readCookie(request, "loginId"); //쿠키를 읽음(loginId를)

String cookieCheck = "";       // 
if (!loginId.equals("")) {
    cookieCheck = "checked";
}
%>
<html>
<head><title>Cookie - 아이디 저장하기</title></head>
<body>
    <h2>로그인 페이지</h2>
    <form action="IdSaveProcess.jsp" method="post">
    아이디 : <input type="text" name="user_id" value="<%= loginId %>" />  <!-- name이 파라미터가 되고 value 로그인아이디가 값이 됨 -->
        <input type="checkbox" name="save_check" value="Y" <%= cookieCheck %> /> <!-- check가 되어있으면 값이 Y가 됨 -->
        아이디 저장하기 <!-- cookeCheck값을 넣음 -->
    <br />
    패스워드 : <input type="text" name="user_pw" />
    <br />
    <input type="submit" value="로그인하기" />     <!-- submit하면 form에 있는 aciton을 호출 -->
    </form>
</body>
</html>