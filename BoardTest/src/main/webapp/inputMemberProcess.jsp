<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.sql.Connection" %>
	<%@	page import= "java.sql.DriverManager" %>
	<%@ page import= "java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
<% 
	// 파라미터 읽기

	request.setCharacterEncoding("UTF-8");  // 한글타입변환 인코딩  
	
	String id = request.getParameter("id");
	int pass = Integer.parseInt(request.getParameter("pass"));
	String name = request.getParameter("name");

	System.out.println(id + "," + pass + ":"  + name);


	// 데이터베이스 연결 및 기타
	
	//드라이버 로드
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	//데이터베이스 연결
	String dburl = "jdbc:mysql://localhost:3306/musthave";
	String dbid = "musthave";
	String dbpw = "tiger";
	Connection con = DriverManager.getConnection(dburl, dbid, dbpw);
	
	String sql = "insert into member(id,pass,name) values(?,?,?)";
	PreparedStatement psmt = con.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setInt(2, pass);
	psmt.setString(3, name);
	
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
	

	




</body>
</html>