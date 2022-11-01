package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class JdbcMain2 {

	private static List<BoardDto>getData(ResultSet rs) throws SQLException{
		List<BoardDto> list = new ArrayList<>();
		
		while(rs.next()) {
			list.add(new BoardDto(rs.getString("title"), rs.getString("content"),
					rs.getInt("id"),rs.getString("postdate"),rs.getInt("visitcount")));
		}
		return list;
	}
	
	public static void printData(List<BoardDto> list) {
		for(BoardDto b : list) {
			System.out.println(b.toString());
		}
	}
	
	
	
	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/musthave";        //데이터베이스를 world, musthave
		String sql = "select * from board"; 					 // 테이블 안에 country
					// sql에서 오류가 났을때 workbench에서 실행해보면 확인 가능
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, "musthave", "tiger");  // url 사용자 , password 설정
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);

	
		List<BoardDto> list = null;
			list = getData(rs);
		
		
		
		rs.close();
		st.close();
		con.close();
		printData(list);
		
	}	

}
