package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.CartItemVO;
import livart.DBConnection;
import oracle.jdbc.OracleTypes;
import util.DBManager;

public class CartDAO {
	
	private static CartDAO instance = new CartDAO();

	public static CartDAO getInstance() {
		return instance;
	}
	
	Connection conn = null;
	
	public CartDAO() {
		try {
			conn = DBManager.getConnection();
			System.out.println("db success");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	 }

	public ArrayList<CartItemVO> selectCartItemList() {
		ArrayList<CartItemVO> cartItemList =  new ArrayList<>();

		try {
		
			String query = "{call cart_select_list(?,?)}";
			CallableStatement callableStatement = conn.prepareCall(query);
			callableStatement.setInt(1, 1);
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			
			callableStatement.execute();
			ResultSet rs = (ResultSet)callableStatement.getObject(2);
			
			while(rs.next()) {
				int quantity = rs.getInt(1);
				int cart_id = rs.getInt(2);
				String p_id = rs.getString(3);
				
				System.out.println(quantity + " " + cart_id + " " + p_id);
				CartItemVO cartItemVO = new CartItemVO();
				cartItemVO.setQuantity(quantity);
				cartItemVO.setProduct_p_id(p_id);
				cartItemVO.setCart_cart_id(cart_id);
				
				cartItemList.add(cartItemVO);
			}
			rs.close();
			
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			e.printStackTrace();
		}
		return cartItemList;
	}
}
