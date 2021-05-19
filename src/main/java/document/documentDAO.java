package document;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.Org;

import product.productVO;

public class documentDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public documentDAO(){
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
	
	//공유 서류 조회
	public Document getdoc(String Oid) {
		String SQL = "SELECT * FROM orgDocument WHERE Oid = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, Oid);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Document Document = new Document();
				
				Document.setDocumentID(rs.getInt(1));
				Document.setDocumentURL(rs.getString(3));
				Document.setDocumentStatement(rs.getString(4));
				System.out.println(Document.getDocumentStatement());
				return Document;
			}
		} catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
	}
	
	//공유 서류 작성
	public int write(int documentID, String Oid, String documentURL, String documentStatement) {
		return -1;
	}
}
