package point;

import java.sql.*;

public class pointDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public pointDAO(){
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
	
	//단체 - 필요한 포인트 등록(기부받지 않은 상태)
	public int insertPoint(String Oid, int point, String pointproduct) {
		String SQL = "INSERT INTO orgPoint(Oid, MPid, point, pointproduct) VALUES (?, ?, ?, ?)";
		
		try{
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, Oid); //아이디 가져오기
			pstmt.setString(2, null);
			pstmt.setInt(3, point);
			pstmt.setString(4, pointproduct);
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
		    e.printStackTrace();
		}
		return 0;
	}
	
	//단체 - 등록한 포인트와 유저 조회
	public Point getpoint(String Oid) {
		String SQL = "SELECT * FROM orgPoint WHERE Oid = ?";
		
		try {
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, Oid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Point Point = new Point();
				
				Point.setOid(rs.getString(1));
				Point.setMPid(rs.getString(2));
				Point.setPoint(rs.getInt(3));
				Point.setPointproduct(rs.getString(4));
				return Point;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}