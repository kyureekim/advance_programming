package product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.io.IOException;

public class productDAO {
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    public productDAO(){
        String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver"; // jdbc 드라이버 주소
        String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe"; // DB 접속 주소
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
    
    // productID에 순번 매겨주는 함수
    public int nextNumber() {
    	String SQL="SELECT (RANK() OVER(ORDER BY productID DESC)) ROWNUMS, productID from orgProduct";
    	
    	try {
    		PreparedStatement pstmt = conn.prepareStatement(SQL);
    		
    		rs = pstmt.executeQuery();
    		while(rs.next()) {
    			System.out.println(rs.getInt(2));
    			return rs.getInt(2)+1;
    		}
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return 1; //디폴트 productID
    }
    
    // 개수 세는 함수
    public int count() {
    	String SQL = "SELECT count(*) FROM orgProduct";
    	try {
    		PreparedStatement pstmt = conn.prepareStatement(SQL);
    		rs = pstmt.executeQuery();
    		
    		if(rs.next()) {
    			int count = 0;
    			count = rs.getInt(1);
    			return count;
    		}
    		return 0;
    	} catch(Exception e){
    		e.printStackTrace();
    	}
    	return -1;
    }
    
    // 제품을 리스트대로 출력하는 함수
    public productVO getList(int productID) throws IOException{
        String SQL = "SELECT productID, Oid, productNumber, productName FROM orgproduct WHERE productID = ?";
        
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            
            pstmt.setInt(1,productID);
            rs = pstmt.executeQuery();
            System.out.println(productID);
            while(rs.next()) {
            	productVO productVO = new productVO();
            	
            	productVO.setProductID(rs.getInt(1));
            	productVO.setOid(rs.getString(2));
            	productVO.setProductNumber(rs.getString(3));
            	productVO.setProductName(rs.getString(4));
            	System.out.println("수량"+productVO.getProductNumber());
            	
            	return productVO;
            }
        } catch (Exception e) {
        	e.printStackTrace();
        }
        return null;
    }


    public int productWrite(String Oid, String productNumber, String productName) throws IOException {
        String SQL = "INSERT INTO orgproduct(productID, Oid, productNumber, productName) VALUES (?, ?, ?, ?)";

        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            
            pstmt.setInt(1, nextNumber());
            pstmt.setString(2, Oid);
            pstmt.setString(3, productNumber);
            pstmt.setString(4, productName);
            
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

}