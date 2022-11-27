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
		
			String query = "{call all_cart_list(?,?)}";
			CallableStatement callableStatement = conn.prepareCall(query);
			callableStatement.setString(1, "kibeom5118");
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			
			callableStatement.execute();
			ResultSet rs = (ResultSet)callableStatement.getObject(2);
			
			while(rs.next()) {
				String img_url = rs.getString(1);
				String p_id = rs.getString(2);
				String p_name = rs.getString(3);
				int p_price = rs.getInt(4);
				int d_price = rs.getInt(5);
				int p_deliveryfee = rs.getInt(6);
				int ci_quantity = rs.getInt(7);
				
				System.out.println(img_url);
				CartItemVO cartItemVO = new CartItemVO();
				cartItemVO.setImg_url(img_url);
				cartItemVO.setP_id(p_id);
				cartItemVO.setP_name(p_name);
				cartItemVO.setP_price(p_price);
				cartItemVO.setD_price(d_price);
				cartItemVO.setP_deliveryfee(p_deliveryfee);
				cartItemVO.setQuantity(ci_quantity);
				
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
