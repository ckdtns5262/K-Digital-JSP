<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<% 
int num = 0;
String snum = request.getParameter("num");
	if(snum!= null && snum.equals("") == false){
	num = Integer.parseInt(snum);
}
	int res = 1;
	String t = String.format("%d=", num);
	for(int i =num; 0<i; i--){
		res*= i;
		t = String.format("%s*%d",t,i);
	}
	t += String.format("=%d", res);
	

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팩토리얼만들기</title>
</head>
<body>
<% 
out.println(num +" !은" + res + "입니다.");

%>

</body>
</html>