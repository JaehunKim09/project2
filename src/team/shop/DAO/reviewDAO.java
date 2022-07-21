package team.shop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import team.shop.DTO.reviewVO;
import team.util.DBManager;


public class reviewDAO {
	private reviewDAO() {
	}

	private static reviewDAO instance = new reviewDAO();

	public static reviewDAO getInstance() {
		return instance;
	}

	public ArrayList<reviewVO> listreview(String pNum) {
		ArrayList<reviewVO> reviewList = new ArrayList<reviewVO>();
		String sql = "select * from review where pNum = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pNum);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				reviewVO pVo = new reviewVO();

				//pVo.setpNum(rs.getInt("pNum"));
				pVo.setId(rs.getString("id"));
				//pVo.setoNum(rs.getInt("oNum"));
				//pVo.setrNum(rs.getInt("rNum"));
				pVo.setContent(rs.getString("content"));
				pVo.setrImg(rs.getString("rImg"));
				pVo.setrDate(rs.getTimestamp("rDate"));
				
				
			
				reviewList.add(pVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return reviewList;
	}


	
	}

	
