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
	<form action="inputBoardProcess.jsp" method="post"> <!--action = > 호출되어야 할 url-->
	<table>
	<tr>
		<td>num</td>
		<td><input type="text" name="num" ></td>
		</tr>
		<tr>
		<td>Title</td>
		<td><input type="text" name="title" ></td>
		</tr>
		<tr>	
		<td>Content</td>
		<td><input type="text" name="content"></td>
		</tr>
		<tr>
		<td>Id</td>
		<td><input type="text" name="id"></td>
		</tr>
		<tr>
		<td colspan="2"><input style="width:100%" type="submit" value="저장">
		</tr>
	
	</table>
	</form>
</body>
</html>