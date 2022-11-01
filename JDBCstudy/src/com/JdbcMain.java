package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

public class JdbcMain {


	
	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/musthave";        //데이터베이스를 world, musthave
		String sql = "select * from board"; 					 // 테이블 안에 country
					// sql에서 오류가 났을때 workbench에서 실행해보면 확인 가능
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, "musthave", "tiger");  // url 사용자 , password 설정
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		while(rs.next()) {	// false를 return 더이상 읽을 데이터가 없다는 뜻
			System.out.println(rs.getString("title"));
			System.out.println(rs.getString("content"));
		}
		
	    // 날짜 출력 포맷 정의 / yyyy/MM/dd hh:mm:ss
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd"); //시간이랑 구분위해 month는 MM으로 표기
		// 숫자 출력 포맷 정의
		DecimalFormat df = new DecimalFormat("#, ###");
		
		while(rs.next()) {
			//System.out.println(rs.getString("Name"));
			System.out.println(String.format("%s|%s|%s|%s|%s",
					
			rs.getInt("num"),
			rs.getString("title"),
			rs.getString("content"),
			rs.getString("id"),
			sf.format(rs.getDate("postdate")),
			df.format(rs.getInt("visitcount"))
		
					
//			rs.getString("Name"),
//			rs.getInt("id"),
//			rs.getString("countrycode"),
//			rs.getString("district"),
//			df.format(rs.getInt("population"))
					
					));		
		}		
		rs.close();
		st.close();
		con.close();
		
	}	

}
