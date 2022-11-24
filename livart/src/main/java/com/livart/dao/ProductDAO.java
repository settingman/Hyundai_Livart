package com.livart.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.livart.dto.ProductVO;

import oracle.jdbc.OracleTypes;
import util.DBManager;

public class ProductDAO {

	private ProductDAO() {
	}

	private static ProductDAO instance = new ProductDAO();

	public static ProductDAO getInstance() {
		return instance;
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
				 product.setP_date(rs.getDate(6));
				 product.setP_deliveryfee(rs.getInt(7));
				 productList.add(product);
			 }
			 
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}
		return productList;
		
	}
}
