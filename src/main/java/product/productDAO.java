package product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class productDAO {
    Connection conn;
    PreparedStatement stat; 
    ResultSet rs;

    public productDAO(){
        try {
            
            Class.forName("dbclass");
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
        }
    }

    
    public ArrayList<productVO> getList() throws IOException{
        String SQL = "SELECT * FROM product WHERE productID>0";

        ArrayList<productVO> list = new ArrayList<productVO>();

        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);

            rs = pstmt.executeQuery();

        } catch (Exception e) {
            
        }
        return list;
    }

    
    public int productWrite(int productID, String oid, int productNumber, String productName) throws IOException {
        String SQL = "INSERT INTO product VALUES (?, ?, ?, ?)";
        
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);

            pstmt.setInt(0, productID);
            pstmt.setString(1, oid);
            pstmt.setInt(2, productNumber);
            pstmt.setString(3, productName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
    
}