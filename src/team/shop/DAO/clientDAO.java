package team.shop.DAO;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import team.shop.DTO.clientVO;
import team.util.DBManager;

//DAO : DB와 어떻게 일 할 것인가? 에 대한 코드
public class clientDAO {

	private clientDAO() {
	}
	
	private static clientDAO instance = new clientDAO();
	
	public static clientDAO getInstance() {
		return instance;
	}
	
	//1. SELECT : 모든 게시글을 불러와 최근 순서로 리스트에 정렬되도록 하는 DAO
		public clientVO getUser(String id2){
			String sql = "select * from client where id=?";
			
			clientVO cVo = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id2);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					cVo = new clientVO();
					//bVo의 setter에 값세팅 (rs가 타입변환 시켜줌)
					cVo.setId(rs.getString("id"));
					cVo.setPw(rs.getString("pw"));
					cVo.setName(rs.getString("name"));
					cVo.setEmail(rs.getString("email"));
					cVo.setAddress(rs.getString("address"));
					cVo.setPhone(rs.getString("phone"));
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt, rs);
			}
			return cVo;
		}
		
}
