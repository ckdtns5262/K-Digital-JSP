<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - Response</title>
</head>
<body>
<%
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd");
if (id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")){
	response.sendRedirect("ResponseWelcome.jsp");    
	// 	리다이어링 방식
} 
else {
	//request.getRequestDispatcher("ResponseBye.jsp?loginErr=1")
	//.forward(request, response);
		
	request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
 	.forward(request, response);  
	// 	request의 객체를 그대로 main페이지에 넘겨줌 
}
%>



</body>
</html>