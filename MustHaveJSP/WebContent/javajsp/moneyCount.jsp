<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int money = 0;
String tmoney = request.getParameter("money");
if (tmoney != null && tmoney.equals("") == false) {
	money = Integer.parseInt(tmoney);
}
int [] arr = {50000, 10000, 5000, 1000};


for(int i=0; i<arr.length; i++){
	if(money/arr[i]>0){
		
	out.println(arr[i] + "은" + money/arr[i]);
// int Fmoney = (money/arr[0]);
// money -= Fmoney*arr[0];
// int Mmoney = money/arr[1];
// money -= Mmoney*arr[1];
// int Omoney = money/arr[2];
// money -= Omoney*arr[3];
// int Cmoney = money/arr[3];
	}
	
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

// out.print("5만원은" + Fmoney + "장입니다.<br/>");
// out.print("1만원은" + Mmoney + "장입니다.<br/>");
// out.print("5천원은" + Omoney + "장입니다.<br/>");
// out.print("1천원은" + Cmoney + "장입니다.<br/>");

%>
</body>
</html>