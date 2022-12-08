package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.CartItemVO;
import dto.OrderItemVO;
import oracle.jdbc.OracleTypes;
import util.DBManager;

public class OrderDAO {

	private OrderDAO() {
	}

	private static OrderDAO instance = new OrderDAO();

	public static OrderDAO getInstance() {
		return instance;
	}

	//기범
	public ArrayList<OrderItemVO> selectOrderItem(String user_id) {

		Connection conn = null;
		conn = DBManager.getConnection();
		ArrayList<OrderItemVO> orderItemList = new ArrayList<>();
		CallableStatement callableStatement = null;
		ResultSet rs = null;
		
		try {

			String query = "{call select_order_item_list(?,?)}";
			callableStatement = conn.prepareCall(query);
			callableStatement.setString(1, user_id);
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);

			callableStatement.execute();
			rs = (ResultSet) callableStatement.getObject(2);

			while (rs.next()) {
				String p_id =  rs.getString(1);
				String p_url = rs.getString(2);
				String p_name = rs.getString(3);
				int quantity = rs.getInt(4);
				int price = rs.getInt(5);
				int order_id = rs.getInt(6);
				String d_status = rs.getString(7);
				String r_status = rs.getString(8);
				String created_at = rs.getString(9);

				System.out.println(created_at);

				OrderItemVO orderItemVO = new OrderItemVO();
				
				orderItemVO.setP_id(p_id);
				orderItemVO.setP_url(p_url);
				orderItemVO.setP_name(p_name);
				orderItemVO.setP_price(price);
				orderItemVO.setQuantity(quantity);
				orderItemVO.setO_id(order_id);
				orderItemVO.setD_status(d_status);
				orderItemVO.setR_status(r_status);
				orderItemVO.setCreated_at(created_at);

				orderItemList.add(orderItemVO);
			}

		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			e.printStackTrace();
		} finally {
			DBManager.close(conn, callableStatement, rs);
		}

		return orderItemList;
	}
	
	//기범
	public void deleteOrderItem(String p_id, int o_id) {
		
		Connection conn = null;
		conn = DBManager.getConnection();
		CallableStatement callableStatement = null;
		
		try {
			String query = "{call update_order_item_list(?,?)}";
			callableStatement = conn.prepareCall(query);
			callableStatement.setString(1, p_id);
			callableStatement.setInt(2, o_id);
			
			callableStatement.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} finally {
			DBManager.close(conn, callableStatement);
		}
		
	}
}
