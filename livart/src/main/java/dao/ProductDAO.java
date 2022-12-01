
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
	public ArrayList<ProductVO> listKindProduct(String kind){
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		
		String runSP ="{call product_pack.SP_PRODUCT_SELECT_CATEGORY(?,?)}";
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
		try {
			 conn = DBManager.getConnection();
			 cs = conn.prepareCall(runSP);
			 cs.setString(1, kind);
			 cs.registerOutParameter(2, OracleTypes.CURSOR);
			 cs.execute();
			 rs = (ResultSet)cs.getObject(2);
			 
			 while(rs.next()) {
				 
				 ProductVO product = new ProductVO();
				 product.setP_id(rs.getString(1));
				 product.setP_name(rs.getString(2));
				 product.setP_price(rs.getInt(3));
				 product.setP_discount(rs.getInt(4));
				 product.setP_category(rs.getString(5));
				 product.setPhoto_url(rs.getString(6));
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
			Connection conn = null;
			CallableStatement cs = null;
			ResultSet rs = null;
		try {
			 conn = DBManager.getConnection();
			 cs = conn.prepareCall(runSP);
			 cs.setString(1, id);
			 cs.registerOutParameter(2, OracleTypes.CURSOR);
			 cs.execute();
			 rs = (ResultSet)cs.getObject(2);
			 
			 if(rs.next()) {
				 product = new ProductVO();
				 product.setP_id(rs.getString(1));
				 product.setP_name(rs.getString(2));
				 product.setP_price(rs.getInt(3));
				 product.setP_discount(rs.getInt(4));
				 product.setP_category(rs.getString(5));
				
				 product.setP_deliveryfee(rs.getInt(6));
				 product.setPhoto_url(rs.getString(7));
			 }
			 
		} catch (SQLException e) {
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
				 ProductVO product = new ProductVO();
				 product.setP_name(rs.getString(1));
				 product.setP_price(rs.getInt(2));
				 product.setP_discount(rs.getInt(3));
				 product.setPhoto_url(rs.getString(4));
				 product.setP_id(rs.getString(5));
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
	public ArrayList<ProductVO> getProductOrderByLowPrice(String pid){
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		
		String runSP ="{call product_pack.SP_PRODUCT_SELECT_ORDERBY_LOWPRICE(?,?)}";
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
				 ProductVO product = new ProductVO();
				 product.setP_name(rs.getString(1));
				 product.setP_price(rs.getInt(2));
				 product.setP_discount(rs.getInt(3));
				 product.setPhoto_url(rs.getString(4));
				 product.setP_id(rs.getString(5));
				 
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
	
	public ArrayList<ProductVO> getProductOrderByHighPrice(String pid){
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		
		String runSP ="{call product_pack.SP_PRODUCT_SELECT_ORDERBY_HIGHPRICE(?,?)}";
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
				 ProductVO product = new ProductVO();
				 product.setP_name(rs.getString(1));
				 product.setP_price(rs.getInt(2));
				 product.setP_discount(rs.getInt(3));
				 product.setPhoto_url(rs.getString(4));
				 product.setP_id(rs.getString(5));
				 
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
	
	
}
