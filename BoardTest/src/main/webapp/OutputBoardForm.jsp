<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.sql.Connection" %>
	<%@	page import= "java.sql.DriverManager" %>
	<%@ page import= "java.sql.Statement" %>
	<%@ page import= "java.sql.ResultSet" %>
	<%@ page import= "java.util.List" %>
	<%@ page import= "java.util.ArrayList" %>
	<%@ page import= "com.domain.BoardDTO" %>

<%!
	List<BoardDTO> list = new ArrayList<>();

%>

<% 
	// 드라이버 로드
	//Class.forName("com.mysql.cj.jdbc.Driver");
	Class.forName("org.h2.Driver");
	
	// 데이터베이스 연결
// 	String dburl = "jdbc:mysql://localhost:3306/musthave";
// 	String dbid = "musthave";
// 	String dbpw = "tiger";
	
	String dburl = "jdbc:h2:tcp://localhost/~/test";
	String dbid = "sa";
	String dbpw = "";
	Connection con = DriverManager.getConnection(dburl, dbid, dbpw);
	
	// Statement
	Statement st = con.createStatement();
	
	// query 실행
	ResultSet rs = st.executeQuery("select * from board  order by num ASC limit 10" );   // board에 있는 데이터 10개
	
	// 실행결과를 객체 리스트에 저장
	while(rs.next()){
		list.add(new BoardDTO(
				rs.getInt("num"),
				rs.getString("title"),
				rs.getString("content"),
				rs.getString("id"),
				rs.getString("postdate"),
				rs.getInt("visitcount")
				));
	}
	
	st.close();
	rs.close();
	con.close();
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center" width="90%">
<%
	for(BoardDTO b : list){     
		//out.println(b.toString() + "<br>");
%>
	<tr >
		<td><%=b.getNum() %></td>
		<td><%=b.getTitle() %></td>
		<td><%=b.getContent() %></td>
		<td><%=b.getId() %></td>
		<td><%=b.getPostdate() %></td>
		<td><%=b.getVisitcount() %></td>
		
	</tr>
	
<% 		
	}
%>

</table>
</body>
</html>