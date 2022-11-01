<%@ page import="common.Person" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 영역</title>
</head>
<body>
	<h2>application 영역의 속성 읽기</h2>
	<%
	@SuppressWarnings("unchecked")
	Map<String, Person> maps
				 = (Map<String,Person>)application.getAttribute("maps");
	
	Set<String> keys = maps.keySet();  // Map 컬렉션에 담긴 데이터 확인하기 위해 keySet()으로 가져옴
	for(String key : keys) {
		Person person = maps.get(key);
		out.print(String.format("이름 : %s, 나이 : %d<br/>",
			person.getName(), person.getAge())); // for문에서 모든 key에 해당하는 값들을 꺼냄
	}
	%>
</body>
</html>