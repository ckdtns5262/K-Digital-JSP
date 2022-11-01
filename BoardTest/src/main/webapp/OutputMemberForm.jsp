<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.sql.Connection" %>
	<%@	page import= "java.sql.DriverManager" %>
	<%@ page import= "java.sql.Statement" %>
	<%@ page import= "java.sql.ResultSet" %>
	<%@ page import= "java.util.List" %>
	<%@ page import= "java.util.ArrayList" %>
	<%@ page import= "com.domain.MemberDTO" %>

<%!
	List<MemberDTO> list = new ArrayList<>();

%>

<% 
	// 드라이버 로드
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	// 데이터베이스 연결
	String dburl = "jdbc:mysql://localhost:3306/musthave";
	String dbid = "musthave";
	String dbpw = "tiger";
	Connection con = DriverManager.getConnection(dburl, dbid, dbpw);
	
	// Statement
	Statement st = con.createStatement();
	
	// query 실행
	ResultSet rs = st.executeQuery("select * from  member order by id ASC limit 10" );   // board에 있는 데이터 10개
	
	// 실행결과를 객체 리스트에 저장
	while(rs.next()){
		list.add(new MemberDTO(
				rs.getString("id"),
				rs.getInt("pass"),
				rs.getString("name"),
				rs.getString("regidate")
			
				
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
	for(MemberDTO b : list){     
		//out.println(b.toString() + "<br>");
%>
	<tr >
		<td><%=b.getId() %></td>
		<td><%=b.getPass() %></td>
		<td><%=b.getName() %></td>
		<td><%=b.getRegidate() %></td>

		
		
	</tr>
	
<% 		
	}
%>

</table>
</body>
</html>