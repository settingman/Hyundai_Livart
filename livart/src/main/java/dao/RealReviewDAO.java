package dao;

import java.sql.CallableStatement;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.MemberVO;
import dto.ProductVO;
import dto.RealReviewVO;
import oracle.jdbc.OracleTypes;
import util.DBManager;

public class RealReviewDAO {
	private RealReviewDAO() {
	}

	private static RealReviewDAO instance = new RealReviewDAO();

	public static RealReviewDAO getInstance() {
		return instance;
	}

	/* 상세 리얼리뷰에 모든 정보를 불러옵니다 */
	public RealReviewVO getRealReview(String reviewID) {
		RealReviewVO realReviewVO = null;

		String runSP = "{call realreview_pack.SP_REAL_REVIEW_SELECT(?,?)}";
		Connection conn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			cs = conn.prepareCall(runSP);
			cs.setString(1, reviewID);
			cs.registerOutParameter(2, OracleTypes.CURSOR);
			cs.execute();
			rs = (ResultSet) cs.getObject(2);

			if (rs.next()) {
				realReviewVO = new RealReviewVO();
				realReviewVO.setReview_id(rs.getInt(1));
				realReviewVO.setReview_title(rs.getString(2));
				realReviewVO.setReview_content(rs.getString(3));
				realReviewVO.setReview_date(rs.getString(4));
				realReviewVO.setInterest(rs.getString(5));
				realReviewVO.setReview_order(rs.getString(6));
				realReviewVO.setDwelling(rs.getString(7));
				realReviewVO.setPlace(rs.getString(8));
				realReviewVO.setReview_size(rs.getString(9));
				realReviewVO.setBudget(rs.getString(10));
				realReviewVO.setReview_style(rs.getString(11));
				realReviewVO.setTogether(rs.getString(12));
				realReviewVO.setUser_user_id(rs.getString(13));
				realReviewVO.setProduct_p_id(rs.getString(14));

			}

		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cs, rs);
		}
		return realReviewVO;
	}

	/* 리얼리뷰 전체 조회 */
	public ArrayList<RealReviewVO> getListRealReview() {
		ArrayList<RealReviewVO> realReviewList = new ArrayList<RealReviewVO>();

		String runSP = "{call realreview_pack.SP_REAL_REVIEW_LIST(?)}";
		Connection conn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			cs = conn.prepareCall(runSP);
			cs.registerOutParameter(1, OracleTypes.CURSOR);
			cs.execute();
			rs = (ResultSet) cs.getObject(1);

			while (rs.next()) {
			
				RealReviewVO realReviewVO = new RealReviewVO();
				realReviewVO.setReview_id(rs.getInt(1));
				realReviewVO.setReview_title(rs.getString(2));
				realReviewVO.setUser_user_id(rs.getString(3));
				realReviewVO.setPhoto_url(rs.getString(4));
				realReviewList.add(realReviewVO);
			}

		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cs, rs);
		}
		return realReviewList;
	}

	public void saveReview(RealReviewVO realReviewVO ) {
		
		Connection conn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		PreparedStatement ps =null;


		String runSP = "{call SP_REVIEW_SAVE(?,?,?,?,?,?,?,?,?,?,?,?,?)}";
		
		
        
        

		try {
			conn = DBManager.getConnection();

			cs = conn.prepareCall(runSP);
			
			cs.setString(1, realReviewVO.getReview_title());
			cs.setString(2, realReviewVO.getReview_content());
			cs.setString(3, realReviewVO.getReview_date());
			cs.setString(4, realReviewVO.getInterest());
			cs.setString(5, realReviewVO.getReview_order());
			cs.setString(6, realReviewVO.getDwelling());
			cs.setString(7, realReviewVO.getPlace());
			cs.setString(8, realReviewVO.getReview_size());
			cs.setString(9, realReviewVO. getBudget());
			cs.setString(10, realReviewVO.getReview_style());
			cs.setString(11, realReviewVO.getTogether());
			cs.setString(12, realReviewVO.getUser_user_id());
			cs.setString(13, realReviewVO.getProduct_p_id());
			
			cs.execute();
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cs);
		}

	}
}
