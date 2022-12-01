package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.CartItemVO;
import dto.PreOrdersVO;
//import livart.DBConnection;
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
		ArrayList<CartItemVO> cartItemList = new ArrayList<>();
		CallableStatement callableStatement = null;

		try {

			String query = "{call all_cart_list(?,?)}";
			callableStatement = conn.prepareCall(query);
			callableStatement.setString(1, "kibeom5118");
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);

			callableStatement.execute();
			ResultSet rs = (ResultSet) callableStatement.getObject(2);

			while (rs.next()) {
				String img_url = rs.getString(1);
				String p_id = rs.getString(2);
				String p_name = rs.getString(3);
				int cart_id = rs.getInt(4);
				int p_price = rs.getInt(5);
				int d_price = rs.getInt(6);
				int p_deliveryfee = rs.getInt(7);
				int ci_quantity = rs.getInt(8);
				String user_id = rs.getString(9);

				System.out.println(p_name);

				CartItemVO cartItemVO = new CartItemVO();
				cartItemVO.setImg_url(img_url);
				cartItemVO.setP_id(p_id);
				cartItemVO.setP_name(p_name);
				cartItemVO.setCart_id(cart_id);
				cartItemVO.setP_price(p_price);
				cartItemVO.setD_price(d_price);
				cartItemVO.setP_deliveryfee(p_deliveryfee);
				cartItemVO.setQuantity(ci_quantity);
				cartItemVO.setUser_id(user_id);

				cartItemList.add(cartItemVO);
			}
			rs.close();

		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			e.printStackTrace();
		} finally {
			DBManager.close(conn, callableStatement);
		}
		return cartItemList;
	}

	public ArrayList<CartItemVO> changeQty(String productId, int quantity) {
		ArrayList<CartItemVO> cartItemList = null;

		try {
			String query = "{call update_product_quantity(?,?)}";
			CallableStatement callableStatement = conn.prepareCall(query);
			callableStatement.setString(1, productId);
			callableStatement.setInt(2, quantity);
			int update_cnt = callableStatement.executeUpdate();

			cartItemList = selectCartItemList();

			System.out.println("수정 하러 옴");

		} catch (Exception e) {

		}
		return cartItemList;
	}

	public ArrayList<CartItemVO> deleteProduct(String productId) {
		ArrayList<CartItemVO> cartItemList = null;
		CallableStatement callableStatement = null;

		try {
			String query = "{call delete_product(?)}";
			callableStatement = conn.prepareCall(query);
			callableStatement.setString(1, productId);

			int delete_cnt = callableStatement.executeUpdate();

			if (delete_cnt == 1) {

				System.out.println("삭제완료");
				cartItemList = selectCartItemList();
			}
		} catch (Exception e) {

		} finally {
			DBManager.close(conn, callableStatement);
		}
		return cartItemList;
	}

	public ArrayList<CartItemVO> selectCartBuyItemList(String userId) {
		ArrayList<CartItemVO> cartItemList = new ArrayList<>();

		System.out.println("userId값 가지고 들어옴");
		try {

			String query = "{call all_cart_list(?,?)}";
			CallableStatement callableStatement = conn.prepareCall(query);
			callableStatement.setString(1, userId);
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);

			callableStatement.execute();
			ResultSet rs = (ResultSet) callableStatement.getObject(2);

			while (rs.next()) {
				String img_url = rs.getString(1);
				String p_id = rs.getString(2);
				String p_name = rs.getString(3);
				int cart_id = rs.getInt(4);
				int p_price = rs.getInt(5);
				int d_price = rs.getInt(6);
				int p_deliveryfee = rs.getInt(7);
				int ci_quantity = rs.getInt(8);
				String user_id = rs.getString(9);

				System.out.println("p_name: " + p_name);
				CartItemVO cartItemVO = new CartItemVO();
				cartItemVO.setImg_url(img_url);
				cartItemVO.setP_id(p_id);
				cartItemVO.setP_name(p_name);
				cartItemVO.setCart_id(cart_id);
				cartItemVO.setP_price(p_price);
				cartItemVO.setD_price(d_price);
				cartItemVO.setP_deliveryfee(p_deliveryfee);
				cartItemVO.setQuantity(ci_quantity);
				cartItemVO.setUser_id(user_id);

				cartItemList.add(cartItemVO);
			}
			rs.close();

		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			e.printStackTrace();
		}
		return cartItemList;
	}

	public PreOrdersVO selectPreOrderInfo() {

		PreOrdersVO preOrdersInfo = new PreOrdersVO();

		try {

			String query = "call pre_order_info(?,?,?)";
			CallableStatement callableStatement = conn.prepareCall(query);
			callableStatement.setString(1, "kibeom5118");
			callableStatement.registerOutParameter(2, java.sql.Types.VARCHAR);
			callableStatement.registerOutParameter(3, java.sql.Types.VARCHAR);

			callableStatement.execute();

			String name = callableStatement.getString(2);
			String phone = callableStatement.getString(3);

			preOrdersInfo.setOrderer(name);
			preOrdersInfo.setOrderer_phone(phone);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return preOrdersInfo;
	}

	public void insertCartItem(int qty, String pid, String joinid) {
		String runSP = "{call insertInCart(?, ?, ?)}";
		conn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			cs = conn.prepareCall(runSP);
			cs.setInt(1, qty);
			cs.setString(2, pid);
			cs.setString(3, joinid);
			cs.execute();
			

		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cs, rs);
		}
	}

}
