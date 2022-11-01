<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>JDBC</title>
</head>
<body>
	<h2>회원 추가 테스트(executeUpdate() 사용)</h2>
	<%
	// DB에 연결
	JDBConnect jdbc = new JDBConnect();

	// 테스트용 입력값 준비 
	String id = null; // id 선언

	// 쿼리문 생성
	String sql = "INSERT INTO user(num, title, content, id) VALUES (?, ?, ?, ?)";
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	String add_str = request.getParameter("add_str");
	
// 	for(int i = 1; i <= 100; i++) {
// 		int num = i; // num 출력
// 		String title = "제목" + i; // title 출력
// 		String content = "내용" + i; // content 출력
	 	
// 		if (i % 2 == 1)
// 	 		id = "musthave1"; // id1
// 	 	 else 
// 	 		id = "musthave2"; // id2

	for(int i =1; i<=10; i++){
		int num = i;
		String title = "유저이름" + i;
		String content = "유저정보" + i;
		
	if(i % 2 ==1)
		id = "userid1";
	else
		id = "userid2";
	
	
	psmt.setInt(1, i);
	psmt.setString(2, title);
	psmt.setString(3, content);
	psmt.setString(4, id);
	
	// 쿼리 수행
	int inResult = psmt.executeUpdate();
	out.print(inResult + "데이터가 입력되었습니다."); 

	}
	// 연결 닫기
	jdbc.close();
	%>
</body>
</html>
