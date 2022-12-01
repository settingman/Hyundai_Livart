package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;

import dto.ImageVO;
import dto.MemberVO;
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
	
	
	
public void insertImage(ImageVO imageVO) {
		
		Connection conn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		PreparedStatement ps =null;


		String runSP = "{call SP_IMAGE_INSERT(?,?,?,?)}";
		
		

		try {
			conn = DBManager.getConnection();

			cs = conn.prepareCall(runSP);
			
			cs.setString(1, imageVO.getClassification());
			cs.setString(2, imageVO.getProduct_p_id());
			cs.setInt(3, imageVO.getReview_review_id());
			cs.setString(4, imageVO.getPhoto_url());

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
	/*리뷰 이미지 썸네일 부분에서, 상품의 리얼리뷰 개수를 반환*/
	public int countOfReviewImage(String category) {
		int count = 0;
		String runSP ="{call product_pack.SP_REVIEW_IMAGE_SELECT_COUNT(?,?)}";
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
			
			try {
				 conn = DBManager.getConnection();
				 cs = conn.prepareCall(runSP);
				 cs.setString(1, category);
				 cs.registerOutParameter(2,Types.INTEGER );
				 cs.execute();
				 count = cs.getInt(2);
				 

			} catch (SQLException e) {
				System.out.println("프로시저에서 에러 발생!");
				System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, cs);
			}
		return count;
	}
	/*리뷰썸네일에서 해당 리뷰로 넘어갈 때, 대표사진을 리얼리뷰에서 출력*/
	public String ReviewImage(String reviewID){
		String image = "";
		
		String runSP ="{call realreview_pack.SP_REAL_REVIEW_IMAGE(?,?)}";
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
		try {
			 conn = DBManager.getConnection();
			 cs = conn.prepareCall(runSP);
			 cs.setString(1, reviewID);
			 cs.registerOutParameter(2, Types.VARCHAR);
			 cs.execute();
			 image = cs.getString(2);
			 
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, cs);
		}
		return image;
	}
}
