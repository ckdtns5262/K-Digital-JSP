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

public class JdbcMain3 {

	private static List<CityDto>getData(ResultSet rs) throws SQLException{
		List<CityDto> list = new ArrayList<>();
		
		while(rs.next()) {
			list.add(new CityDto(rs.getInt("id"), rs.getString("name"),
					rs.getString("countrycode"), rs.getString("district"),rs.getInt("population")));
		}
		return list;
	}	
	public static void printData(List<CityDto> list) {
		for (CityDto c : list) {
			System.out.println(c.toString());
		}
	}
	
	
	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/world";        //데이터베이스를 world, musthave
		String sql = "select * from city"; 					 // 테이블 안에 country
					// sql에서 오류가 났을때 workbench에서 실행해보면 확인 가능
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, "musthave", "tiger");  // url 사용자 , password 설정
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);

		List<CityDto> list = null; //초기값설정하기
			list = getData(rs);   //rs의 데이터를 가져옴 
		
		
		rs.close();
		st.close();
		con.close();
		printData(list);
		
	}	

}
