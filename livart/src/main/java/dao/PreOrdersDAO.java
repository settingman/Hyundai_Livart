//package dao;
//
//import java.sql.CallableStatement;
//import java.sql.Connection;
//
//import dto.PreOrdersVO;
//import util.DBManager;
//
//public class PreOrdersDAO {
//
//	private static PreOrdersDAO instance = new PreOrdersDAO();
//
//	public static PreOrdersDAO getInstance() {
//		return instance;
//	}
//	
//	Connection conn = null;
//	
//	public PreOrdersDAO() {
//		try {
//			conn = DBManager.getConnection();
//			System.out.println("db success");
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	 }
//	
//	public PreOrdersVO selectPreOrderInfo() {		
//
//		PreOrdersVO preOrdersInfo = new PreOrdersVO();
//
//		try {
//			
//			String query="call pre_order_info(?,?,?)";
//			CallableStatement callableStatement = conn.prepareCall(query);
//			callableStatement.setString(1, "kibeom5118");
//			callableStatement.registerOutParameter(2, java.sql.Types.VARCHAR);
//			callableStatement.registerOutParameter(3, java.sql.Types.VARCHAR);
//			
//			callableStatement.execute();
//			
//			String name = callableStatement.getString(2);
//			String phone = callableStatement.getString(3);
//			
//			preOrdersInfo.setOrderer(name);
//			preOrdersInfo.setOrderer_phone(phone);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return preOrdersInfo;
//	}
//}
