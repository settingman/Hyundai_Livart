package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.MemberVO;
import dto.ProductVO;
import oracle.jdbc.OracleTypes;
import util.DBManager;



//성환 : memberDAO
public class MemberDAO {

	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}

	public void insertMember(MemberVO memberVO) {

		String runSP = "{call SP_MEMBER_INSERT(?,?,?,?,?)}";
		Connection conn = null;
		CallableStatement cs = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();

			cs = conn.prepareCall(runSP);
			cs.setString(1, memberVO.getUser_id());
			cs.setString(2, memberVO.getPwd());
			cs.setString(3, memberVO.getPhone());
			cs.setString(4, memberVO.getEmail());
			cs.setString(5, memberVO.getUsername());

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

}
