package team.shop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import team.shop.DTO.adminVO;
import team.util.DBManager;

public class AdminMtmDAO {
	
	private AdminMtmDAO(){}
		
	private static AdminMtmDAO instance = new AdminMtmDAO();
	
	public static AdminMtmDAO getInstance() {
		return instance;
	}
	
	public adminVO getAdmin(String admin_id) {
		String sql="select * from admin where admin_id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		adminVO aVo = null;
		try {
			
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, admin_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				aVo = new adminVO();
				
				aVo.setAdmin_id(rs.getString("adminid"));
				aVo.setAdmin_name(rs.getString("admin_name"));
				aVo.setAdmin_pw(rs.getString("admin_pw"));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return aVo;
	}
}
