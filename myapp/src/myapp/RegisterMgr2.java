package myapp;

import java.sql.*;

public class RegisterMgr2 {
	private DBConnectionMgr pool;
	
	public RegisterMgr2() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception ex) {
			System.out.println("Error : 커넥션 연결 실패 !");
		}
	}
	
	public boolean loginRegister(String id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean loginCon = false;
		
		try {
			con = pool.getConnection();
			String query = "select count(*) from tblRegister where id = ? and pwd = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next() && rs.getInt(1) > 0) loginCon = true;
		} catch (Exception ex) {
			System.out.println("Exception " + ex);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return loginCon;
		
	}
}
