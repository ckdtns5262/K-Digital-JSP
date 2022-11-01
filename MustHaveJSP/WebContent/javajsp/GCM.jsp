<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<% 
int num1 = 0;
String snum1 = request.getParameter("num1");
	if(snum1!= null && snum1.equals("") == false){
	num1 = Integer.parseInt(snum1);
}
int num2 = 0;
String snum2 = request.getParameter("num2");
	if(snum2!= null && snum2.equals("") == false){
	num2 = Integer.parseInt(snum2);
	}
int max; int min;
	if(num1 < num2) {
		max = num2;
		min = num1;
	} else {
		max = num1;
		min= num2;
	}
	max = (num1<num2)?num2:num1;
	min = (num1<num2)?num1:num2;
	
	int rem = max%min;
	while(rem != 0) {
		max = min;
		min = rem;
		rem = max%min;
	}
	


	
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
out.println(num1 +" 과 " + num2 +"의 최대공약수는" + min +", 최소공배수는" + max + " 입니다.");
%>

</body>
</html>