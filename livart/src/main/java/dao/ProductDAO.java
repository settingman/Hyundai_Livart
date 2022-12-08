
package dao;

import java.sql.CallableStatement;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;

import dto.ProductVO;
import oracle.jdbc.OracleTypes;
import util.DBManager;
/* 
 * 
 * 작성자 : 이진후*/
public class ProductDAO {

	private ProductDAO() {
	}

	private static ProductDAO instance = new ProductDAO();

	public static ProductDAO getInstance() {
		return instance;
	}
	
	
	public int countOfProduct(String category) {
		int count = 0;
		String runSP ="{call product_pack.SP_PRODUCT_SELECT_COUNT(?,?)}";
		//카테고리 별 상품의 총 개수를 반환해주는 프로시저
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
			
			try {
				 conn = DBManager.getConnection();// 오라클 클라우드 연결
				 cs = conn.prepareCall(runSP);
				 cs.setString(1, category);// category 변수로 넘어오는 값을 오라클에 넘겨준다
				 cs.registerOutParameter(2,Types.INTEGER );
				 // 프로시저에서 반환되는 총 개수를 정수형태로 받아온다
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
	public ArrayList<ProductVO> listKindProduct(String kind){
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		//카테고리별 상품을 담을 리스트 초기화
		String runSP ="{call product_pack.SP_PRODUCT_SELECT_CATEGORY(?,?)}";
		/* 카테고리별 상품을 조회하는 프로시저*/
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
		try {
			 conn = DBManager.getConnection();
			 cs = conn.prepareCall(runSP);
			 cs.setString(1, kind);// 브라우저에서 요청하는 kind 별로 쿼리문 달라짐
			 cs.registerOutParameter(2, OracleTypes.CURSOR);//여러 행을 불러오기위해 커서사용
			 cs.execute();
			 rs = (ResultSet)cs.getObject(2);
			 
			 while(rs.next()) {
				 
				 ProductVO product = new ProductVO();
				 product.setP_id(rs.getString(1));//상품 아이디
				 product.setP_name(rs.getString(2));//상품 이름
				 product.setP_price(rs.getInt(3));//상품 가격
				 product.setP_discount(rs.getInt(4));//상품 할인
				 product.setP_category(rs.getString(5));//상품 카테고리
				 product.setPhoto_url(rs.getString(6));//상품 사진 url
				 productList.add(product);
			 }
			 
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, cs,rs);
		}
		return productList;
		
	}
	public ProductVO getProduct(String id){
			ProductVO product = null;
		
		String runSP ="{call product_pack.SP_PRODUCT_SELECT_PID(?,?)}";
		// 특정 상품에 대한 상세정보를 조회하는 프로시저
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
		try {
			 conn = DBManager.getConnection();//오라클 데이터 베이스 연결
			 cs = conn.prepareCall(runSP);
			 cs.setString(1, id);//상품아이디로 조회
			 cs.registerOutParameter(2, OracleTypes.CURSOR);//조회 결과를 커서타입으로 반환
			 cs.execute();
			 rs = (ResultSet)cs.getObject(2);
			 
			 if(rs.next()) {
				 product = new ProductVO();
				 product.setP_id(rs.getString(1));//상품아이디
				 product.setP_name(rs.getString(2));//상품이름
				 product.setP_price(rs.getInt(3));//상품가격
				 product.setP_discount(rs.getInt(4));//상품할인
				 product.setP_category(rs.getString(5));//카테고리
				 product.setP_deliveryfee(rs.getInt(6));//배송료
				 product.setPhoto_url(rs.getString(7));//상품사진 url
			 }
			 
		} catch (SQLException e) {//예외처리
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, cs,rs);
		}
		return product;
	}
	
	public ArrayList<ProductVO> getProductOrderByDate(String pid){
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		
		String runSP ="{call product_pack.SP_PRODUCT_SELECT_ORDERBY_DATE(?,?)}";
		// 상품을 날짜순으로 정렬해서 카테고리별 상품 조회
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
		try {
			 conn = DBManager.getConnection();
			 cs = conn.prepareCall(runSP);
			 cs.setString(1, pid);//
			 cs.registerOutParameter(2, OracleTypes.CURSOR);//조회 결과 커서 타입으로 반환
			 cs.execute();
			 rs = (ResultSet)cs.getObject(2);
			 
			 while(rs.next()) {
				 ProductVO product = new ProductVO();
				 product.setP_name(rs.getString(1));//상품이름
				 product.setP_price(rs.getInt(2));//상품가격
				 product.setP_discount(rs.getInt(3));//할인율
				 product.setPhoto_url(rs.getString(4));//상품 사진url
				 product.setP_id(rs.getString(5));//상품 아이디
				 productList.add(product);// productVO를 리스트에 저장
			 }
			 
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, cs,rs);
		}
		return productList;
	}
	public ArrayList<ProductVO> getProductOrderByLowPrice(String pid){
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		
		String runSP ="{call product_pack.SP_PRODUCT_SELECT_ORDERBY_LOWPRICE(?,?)}";
		// 상품을 낮은 가격순 정렬해서 카테고리별 상품 조회
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
		try {
			 conn = DBManager.getConnection();
			 cs = conn.prepareCall(runSP);
			 cs.setString(1, pid);//카테고리 조건문에 넣기위해 callable 1열에 저장
			 cs.registerOutParameter(2, OracleTypes.CURSOR);//조회 결과 커서 타입으로 반환
			 cs.execute();
			 rs = (ResultSet)cs.getObject(2);
			 
			 while(rs.next()) {
				 ProductVO product = new ProductVO();
				 product.setP_name(rs.getString(1));//상품이름
				 product.setP_price(rs.getInt(2));//상품가격
				 product.setP_discount(rs.getInt(3));//할인율
				 product.setPhoto_url(rs.getString(4));//상품 사진url
				 product.setP_id(rs.getString(5));//상품 아이디
				 
				 productList.add(product);// productVO를 리스트에 저장
			 }
			 
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, cs,rs);
		}
		return productList;
		
	}
	
	public ArrayList<ProductVO> getProductOrderByHighPrice(String pid){
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		
		String runSP ="{call product_pack.SP_PRODUCT_SELECT_ORDERBY_HIGHPRICE(?,?)}";
		// 상품을 높은 가격순 정렬해서 카테고리별 상품 조회
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
		try {
			 conn = DBManager.getConnection();
			 cs = conn.prepareCall(runSP);
			 cs.setString(1, pid);//카테고리 조건문에 넣기위해 callable 1열에 저장
			 cs.registerOutParameter(2, OracleTypes.CURSOR);// 반환 데이터 커서 타입으로 받기
			 cs.execute();
			 rs = (ResultSet)cs.getObject(2);
			 
			 while(rs.next()) {
				 ProductVO product = new ProductVO();
				 product.setP_name(rs.getString(1));//상품이름
				 product.setP_price(rs.getInt(2));//상품가격
				 product.setP_discount(rs.getInt(3));//할인율
				 product.setPhoto_url(rs.getString(4));//상품 사진url
				 product.setP_id(rs.getString(5));//상품 아이디
				 
				 productList.add(product);// productVO를 리스트에 저장
			 }
			 
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, cs,rs);
		}
		return productList;
	}
	
	
}
