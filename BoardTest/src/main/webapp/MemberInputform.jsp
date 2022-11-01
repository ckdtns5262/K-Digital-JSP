<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 입력폼</title>
</head>
<body>
	<h2>게시판 입력폼</h2>
	<form action="inputMemberProcess.jsp" method="post"> <!--action = > 호출되어야 할 url-->
	<table>
		<tr>
		<td>Id</td>
		<td><input type="text" name="id" ></td>
		</tr>
		<tr>	
		<td>Pass</td>
		<td><input type="text" name="pass"></td>
		</tr>
		<tr>
		<td>Name</td>
		<td><input type="text" name="name"></td>
		</tr>
		<tr>
		<td colspan="2"><input style="width:100%" type="submit" value="저장">
		</tr>
	
	</table>
	</form>
</body>
</html>