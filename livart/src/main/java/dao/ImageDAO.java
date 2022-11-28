package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.ImageVO;
import dto.ProductVO;
import oracle.jdbc.OracleTypes;
import util.DBManager;

public class ImageDAO {

	private ImageDAO() {
		
	}
	private static ImageDAO instance = new ImageDAO();
	
	public static ImageDAO getInstance() {
		return instance;
	}
	
	/*상품 상세 페이지에서 리얼리뷰로넘어가기 전 보여지는 사진가져오는 메소드*/
	public ArrayList<ImageVO> listProductReviewImage(String pid){
		ArrayList<ImageVO> imageList = new ArrayList<ImageVO>();
		
		String runSP ="{call product_pack.SP_PRODUCT_SELECT_REVIEW_IMAGE(?,?)}";
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
		try {
			 conn = DBManager.getConnection();
			 cs = conn.prepareCall(runSP);
			 cs.setString(1, pid);
			 cs.registerOutParameter(2, OracleTypes.CURSOR);
			 cs.execute();
			 rs = (ResultSet)cs.getObject(2);
			 
			 while(rs.next()) {
				 ImageVO image = new ImageVO();
				 image.setPhoto_id(rs.getInt(1));
				 image.setClassification(rs.getString(2));
				 image.setProduct_p_id(rs.getString(3));
				 image.setReview_review_id(rs.getInt(4));
				 image.setPhoto_url(rs.getString(5));
				
				 imageList.add(image);
			 }
			 
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, cs);
		}
		return imageList;
		
	}
	
	/*상품 상세 페이지에서 해당 상품에대한 상품 정보 사진을 불러옵니다*/
	public ArrayList<ImageVO> listProductDetailImage(String pid){
		ArrayList<ImageVO> imageList = new ArrayList<ImageVO>();
		
		String runSP ="{call product_pack.SP_PRODUCT_SELECT_PRODUCT_DETAIL_IMAGE(?,?)}";
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
		try {
			 conn = DBManager.getConnection();
			 cs = conn.prepareCall(runSP);
			 cs.setString(1, pid);
			 cs.registerOutParameter(2, OracleTypes.CURSOR);
			 cs.execute();
			 rs = (ResultSet)cs.getObject(2);
			 
			 while(rs.next()) {
				 ImageVO image = new ImageVO();
				 image.setPhoto_url(rs.getString(1));
				 imageList.add(image);
			 }
			 
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, cs);
		}
		return imageList;
		
	}

}
