<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.sql.Connection" %>
	<%@	page import= "java.sql.DriverManager" %>
	<%@ page import= "java.sql.PreparedStatement" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 입력</title>
</head>
<body>
<!-- 1. 파라미터 읽기(Title,Content,Id) -->
<%
	
	request.setCharacterEncoding("UTF-8");  // 한글타입변환 인코딩  
	
	String num = request.getParameter("num");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String id = request.getParameter("id");

	System.out.println(title + "," + content + "," + id);
	
	
	//2. 데이터베이스 연결 및 기타
	
	// 드라이버 로드
// 	Class.forName("com.mysql.cj.jdbc.Driver");
	Class.forName("org.h2.Driver");
	
	// 데이터베이스 연결
// 	String dburl = "jdbc:mysql://localhost:3306/musthave";
// 	String dbid = "musthave";
// 	String dbpw = "tiger";
	
	String dburl = "jdbc:h2:tcp://localhost/~/test";
	String dbid = "sa";
	String dbpw = "";
	
	Connection con = DriverManager.getConnection(dburl, dbid, dbpw);
	
	// PreparedStatement
	String sql = "insert into board(num,title,content,id) values(?,?,?,?)";
	PreparedStatement psmt = con.prepareStatement(sql);
	psmt.setInt(1, Integer.parseInt(num));   // num int 타입이라서 바꿔줌
	psmt.setString(2, title);
	psmt.setString(3, content);
	psmt.setString(4, id);
	
	// query 실행
	// 3. 데이터베이스 입력 
	int result = psmt.executeUpdate();
	
	psmt.close();
	con.close();
	
	if(result == 1 )
		out.println("입력에 성공함");
	else
		out.println("입력에 실패함");
	
%>

	<br>
	<br>

	<a href="BoardInputform.jsp">입력창으로 돌아가기</a>
	










<!-- 4. 완료 메세지 출력 -->

</body>
</html>