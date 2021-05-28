package org;

import java.sql.*;

public class orgDAO{
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public orgDAO(){
		String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver"; // jdbc ����̹� �ּ�
		String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe"; // DB ���� �ּ�
		String USERNAME = "orgteam"; // DB ID
		String PASSWORD = "orgteam"; // DB Password
		try {
		    Class.forName(JDBC_DRIVER);
		    conn = DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);
		} catch (Exception e) {
		    System.out.println("Class Not Found Exection");
		    e.printStackTrace();
		}
	}
	
	//�α��� �Լ�
	public int login(String Oid, String orgPassword){
		String SQL = "SELECT Oid, orgpassword FROM organization WHERE Oid =?";
		try{
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Oid); //���̵� ��������
			rs = pstmt.executeQuery();
			if(rs.next()){
				Org org = new Org();
				if(rs.getString(2).equals(orgPassword)){
					org.setOid(rs.getString(1));
					return 1; //�α��� ����
				} else {
					return 0; //�α��� ����
				}
			}
			return -1;
		} catch (Exception e) {
		    e.printStackTrace();
		}
		return -2;
	}
	
	//��ü ���� ��ȸ �Լ�(������������ ����� ��)
	public Org getOid(String Oid) {
		String SQL = "SELECT * FROM organization WHERE Oid = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, Oid);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Org org = new Org();
				
				org.setOid(rs.getString(1));
				org.setOrgPassword(rs.getString(2));
				org.setOrgName(rs.getString(3));
				org.setPoint(rs.getInt(4));				
				return org;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	//��ü�� ��ȸ�ϴ� �Լ�
	public String getName(String Oid) {
		String SQL = "SELECT orgName FROM organization WHERE Oid=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, Oid);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				return rs.getString(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}