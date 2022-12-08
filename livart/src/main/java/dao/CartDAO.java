package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;

import dto.CartItemVO;
import dto.PreOrdersVO;
//import livart.DBConnection;
import oracle.jdbc.OracleTypes;
import util.DBManager;

//기범
public class CartDAO {

	private CartDAO() {
	}

	private static CartDAO instance = new CartDAO();

	public static CartDAO getInstance() {
		return instance;
	}
	
	   //기범
	public ArrayList<CartItemVO> selectCartBuyItemList(String userId) {

		Connection conn = null;
		conn = DBManager.getConnection(); // db 연결
		ArrayList<CartItemVO> cartItemList = new ArrayList<>(); // db에서 받아온 데이터를 저장하기 위한 변수
		CallableStatement callableStatement = null; // CollabaleStatement 사용
		ResultSet rs = null;
		System.out.println("userId값 가지고 들어옴");
		try {
			String query = "{call all_cart_list(?,?)}";  // 호출할 프로시저 작성
			callableStatement = conn.prepareCall(query);
			callableStatement.setString(1, userId);  // 넘겨줄 인자 
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR); // 리턴값으로 받을 객체
			callableStatement.execute(); // 프로시저 실행
			rs = (ResultSet) callableStatement.getObject(2); // 리턴값으로 받은 객체를 rs에 저장

			while (rs.next()) { // 리턴받은 객체를 끝까지 조회
				String img_url = rs.getString(1); // 필요한 정보들 타입에 변수에 맞게 저장
				String p_id = rs.getString(2);
				String p_name = rs.getString(3);
				int cart_id = rs.getInt(4);
				int p_price = rs.getInt(5);
				int d_price = rs.getInt(6);
				int p_deliveryfee = rs.getInt(7);
				int ci_quantity = rs.getInt(8);
				String user_id = rs.getString(9);

				System.out.println("p_name: " + p_name);
				CartItemVO cartItemVO = new CartItemVO();  // db에서 받은 데이터를 java에서 사용할 수 있도록 VO 객체에 저장
				cartItemVO.setImg_url(img_url);
				cartItemVO.setP_id(p_id);
				cartItemVO.setP_name(p_name);
				cartItemVO.setCart_id(cart_id);
				cartItemVO.setP_price(p_price);
				cartItemVO.setD_price(d_price);
				cartItemVO.setP_deliveryfee(p_deliveryfee);
				cartItemVO.setQuantity(ci_quantity);
				cartItemVO.setUser_id(user_id);

				cartItemList.add(cartItemVO); // 한번 순회할때마다 필요한 정보가 모두 저장된 cartItemVO 객체가 배열에 추가
			}

		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			e.printStackTrace();
		} finally {
			DBManager.close(conn, callableStatement, rs); 
		}
		return cartItemList; // db에 접근하여 얻은 데이터들을 모두 저장한 arraylist 리턴
	}

	public ArrayList<CartItemVO> selectCartItemList() {
		ArrayList<CartItemVO> cartItemList = new ArrayList<>();
		CallableStatement callableStatement = null;
		Connection conn = null;
		ResultSet rs = null;

		try {

			String query = "{call all_cart_list(?,?)}";
			callableStatement = conn.prepareCall(query);
			callableStatement.setString(1, "kibeom5118");
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);

			callableStatement.execute();
			rs = (ResultSet) callableStatement.getObject(2);

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

		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			e.printStackTrace();
		} finally {
			DBManager.close(conn, callableStatement, rs);
		}
		return cartItemList;
	}

	//기범
	  public ArrayList<CartItemVO> changeQty(String productId, int quantity, String user_id) {
	      ArrayList<CartItemVO> cartItemList = null;
	      Connection conn = null;
	      conn = DBManager.getConnection();
	      CallableStatement callableStatement = null;
	      try {
	         String query = "{call update_product_quantity(?,?)}";
	         callableStatement = conn.prepareCall(query);
	         callableStatement.setString(1, productId);
	         callableStatement.setInt(2, quantity);
	         int update_cnt = callableStatement.executeUpdate();

	         cartItemList = selectCartBuyItemList(user_id);

	      } catch (Exception e) {

	      }finally {
	         DBManager.close(conn, callableStatement);
	      }
	      return cartItemList;
	   }

	  //기범
	   public ArrayList<CartItemVO> deleteProduct(String productId, String user_id) {
		      ArrayList<CartItemVO> cartItemList = null;
		      CallableStatement callableStatement = null;
		      Connection conn = null;
		      conn = DBManager.getConnection();

		      try {
		         String query = "{call delete_product(?)}";
		         callableStatement = conn.prepareCall(query);
		         callableStatement.setString(1, productId);

		         int delete_cnt = callableStatement.executeUpdate();

		         if (delete_cnt == 1) {

		            System.out.println("삭제완료");
		            cartItemList = selectCartBuyItemList(user_id);
		         }
		      } catch (Exception e) {

		      } finally {
		         DBManager.close(conn, callableStatement);
		      }
		      return cartItemList;
		   }

	//기범
	   public PreOrdersVO selectPreOrderInfo(String user_id) {

		      PreOrdersVO preOrdersInfo = new PreOrdersVO();
		      CallableStatement callableStatement = null;
		      Connection conn = null;
		      conn = DBManager.getConnection();
		      try {

		         String query = "call pre_order_info(?,?,?)";
		         
		         callableStatement = conn.prepareCall(query);
		         callableStatement.setString(1, user_id);
		         callableStatement.registerOutParameter(2, java.sql.Types.VARCHAR);
		         callableStatement.registerOutParameter(3, java.sql.Types.VARCHAR);

		         callableStatement.execute();

		         String name = callableStatement.getString(2);
		         String phone = callableStatement.getString(3);

		         preOrdersInfo.setOrderer(name);
		         preOrdersInfo.setOrderer_phone(phone);

		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		         DBManager.close(conn, callableStatement);
		      }
		      return preOrdersInfo;
		   }
	   
	   
	   //진후
	public void insertCartItem(int qty, String pid, String joinid) {
		String runSP = "{call insertInCart(?, ?, ?)}";
		Connection conn = null;
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
			DBManager.close(conn, cs);
		}
	}

	//기범
	public int insertOrder(int cart_id, String odr, String odr_phone, String adr, String rcv, String rcv_phone,
			String msg, String user_id) {

		CallableStatement callableStatement = null;
		Connection conn = null;
		int order_id = 0;

		try {
			conn = DBManager.getConnection();

//         String query = "{? = call f_insert_orders(?,?,?,?,?,?,?,?)}";
			String query = "{call insert_orders(?, ?, ?, ?, ?, ?, ?, ?, ?)}";
			callableStatement = conn.prepareCall(query);

//         callableStatement.registerOutParameter(1, Types.INTEGER);
			callableStatement.setInt(1, cart_id);

			callableStatement.setString(2, rcv);
			callableStatement.setString(3, rcv_phone);
			callableStatement.setString(4, adr);
			callableStatement.setString(5, msg);
			callableStatement.setString(6, user_id);
			callableStatement.setString(7, odr);
			callableStatement.setString(8, odr_phone);
			callableStatement.registerOutParameter(9, OracleTypes.NUMBER);
//         order_id = callableStatement.getInt(1);
			callableStatement.executeUpdate();
			order_id = callableStatement.getInt(9);

		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} finally {
			DBManager.close(conn, callableStatement);
		}

		return order_id;
	}

	//기범
	public void insertOrderItem(int order_id, String p_id, int quantity, int cart_id) {

		CallableStatement callableStatement = null;
		Connection conn = null;

		try {
			conn = DBManager.getConnection();
			String query = "{call insert_order_list_item(?,?,?,?)}";
			callableStatement = conn.prepareCall(query);
			System.out.println("아이템 넣을것");

			callableStatement.setInt(1, order_id);
			callableStatement.setString(2, p_id);
			callableStatement.setInt(3, quantity);
			callableStatement.setInt(4, cart_id);

			callableStatement.executeUpdate();

		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
			e.printStackTrace();
		} finally {
			DBManager.close(conn, callableStatement);
		}
	}

//   public OrderCompleteVO findOrderInfo(int order_id) {
//      CallableStatement callableStatement = null;
//      
//      OrderCompleteVO orderCompleteVO = new OrderCompleteVO();
//      
//      try {
//         conn = DBManager.getConnection();
//         String query = "{call insert_order_list_item(?,?,?,?)}";
//         callableStatement = conn.prepareCall(query);
//   
//         
//         callableStatement.setInt(1, order_id);
//         callableStatement.setString(2, p_id);
//         callableStatement.setInt(3, quantity);
//         callableStatement.setInt(4, cart_id);
//         
//         callableStatement.executeUpdate();
//         
//      } catch (SQLException e) {
//         System.out.println("프로시저에서 에러 발생!");
//         System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
//         e.printStackTrace();
//      } finally {
//         //DBManager.close(conn, callableStatement);
//      }
//      
//      return orderCompleteVO;
//   }

}