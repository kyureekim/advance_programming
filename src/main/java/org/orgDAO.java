package org;

import java.sql.*;

public class orgDAO{
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public orgDAO(){
		String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver"; // jdbc 드라이버 주소
		String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe"; // DB 접속 주소
		String USERNAME = "orgteam"; // DB ID
		String PASSWORD = "orgteam"; // DB Password
		System.out.print("User Table 접속 : ");
		try {
		    Class.forName(JDBC_DRIVER);
		    conn = DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
		    if(conn!= null) {System.out.print("성공");}
		} catch (Exception e) {
		    System.out.println("Class Not Found Exection");
		    e.printStackTrace();
		}
	}
	
	//로그인 함수
	public int login(String Oid, String orgPassword){
		String SQL = "SELECT orgpassword FROM organization WHERE Oid =?";
		try{
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Oid); //아이디 가져오기
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				if(rs.getString(2).equals(orgPassword)){
					return 1; //로그인 성공
				} else {
					return 0; //로그인 실패
				}
			}
		} catch (Exception e) {
		    e.printStackTrace();
		}
		return 1;
	}
	
	//단체 유저 조회 함수(마이페이지에 써먹을 거)
	
}