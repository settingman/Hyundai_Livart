package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.ReBuyVO;
import oracle.jdbc.OracleTypes;
import util.DBManager;

public class ReBuyDAO {

	
	
	private ReBuyDAO() {
	}

	private static ReBuyDAO instance = new ReBuyDAO();

	public static ReBuyDAO getInstance() {
		return instance;
	}
	
	public ArrayList<ReBuyVO> getListReBuyProductRank() {
		ArrayList<ReBuyVO> rebuyRankList = new ArrayList<>();
		 System.out.println("rebuy dao 거쳐감1 ");
		String runSP = "{call RE_BUY_PACK.SP_RE_BUY_PRODUCT_SELECT(?) }";
		 System.out.println("rebuy dao 거쳐감1 2");
		Connection conn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
	
		try {
			conn = DBManager.getConnection();
		
			cs = conn.prepareCall(runSP);
		
			cs.registerOutParameter(1, OracleTypes.CURSOR);
			
			cs.execute();
		
			 rs = (ResultSet)cs.getObject(1);
			while(rs.next()) {
				
				
				ReBuyVO rebuyVO = new ReBuyVO();
				System.out.println(rs.getString(8));
				rebuyVO.setP_id(rs.getString(1));
				rebuyVO.setRebuycount(rs.getInt(2));
				rebuyVO.setP_name(rs.getString(3));
				rebuyVO.setP_price(rs.getInt(4));
				rebuyVO.setP_discount(rs.getInt(5));
				rebuyVO.setP_category(rs.getString(6));
				rebuyVO.setPhoto_url(rs.getString(8));
				rebuyRankList.add(rebuyVO);
				
			}
			System.out.println("rebuy dao 거쳐감 8");
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, cs);
		}
		
		return rebuyRankList;
	}
}
