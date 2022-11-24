package livart.cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class CartDAO {

	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	public CartDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
			System.out.println("db success");
		} catch (Exception e) {
			e.printStackTrace();
		}
	 }

	public ArrayList<CartItemVO> selectCartItemList() {
		ArrayList<CartItemVO> cartItemList =  new ArrayList<>();

		try {
			con=dataFactory.getConnection();
			String query ="select quantity, cart_cart_id, product_p_id from cartitem";
			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int quantity = rs.getInt("quantity");
				int cart_id = rs.getInt("cart_cart_id");
				String p_id = rs.getString("product_p_id");
				
				System.out.println(quantity + " " + cart_id + " " + p_id);
				CartItemVO cartItemVO = new CartItemVO();
				cartItemVO.setQuantity(quantity);
				cartItemVO.setProduct_p_id(p_id);
				cartItemVO.setCart_cart_id(cart_id);
				
				cartItemList.add(cartItemVO);
			}
			rs.close();
			pstmt.close();
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cartItemList;
	}
}
