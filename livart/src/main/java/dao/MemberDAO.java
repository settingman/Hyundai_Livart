package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

	// 회원가입
	public void insertMember(MemberVO memberVO) {
		
		Connection conn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		PreparedStatement ps =null;


		String runSP = "{call SP_MEMBER_INSERT(?,?,?,?,?)}";
		

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
	
	
	// 로그인
//	public void loginMember(String user_id, String pwd) {
//		MemberVO memberVO = null;
//		String runSP = "{call sp_member_login(?,?)}";
//		
//		try {
//			conn = DBManager.getConnection();
//			cs = conn.prepareCall(runSP);
//			
//			cs.setString(1, user_id);
//			cs.setString(2,pwd);
//			
//			
//
//			cs.execute();
//		} catch (SQLException e) {
//			System.out.println("프로시저에서 에러 발생!");
//			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			DBManager.close(conn, cs);
//
//		}
//		
//		
//		
//	}
	
	public MemberVO getMember(String mem_id) {
		
		
		Connection conn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		PreparedStatement ps =null;

		
		MemberVO memberVO = null;
		
		String runSP = "{call sp_member_get(?,?)}";
		try {
			
			conn = DBManager.getConnection();
			cs = conn.prepareCall(runSP);
			
			cs.setString(1, mem_id);
			cs.registerOutParameter(2, OracleTypes.CURSOR);
			cs.execute();
			rs = (ResultSet)cs.getObject(2);
			
			
			
			while(rs.next()) {
				String user_id = rs.getString(1);
				String pwd = rs.getString(2);
				String phone = rs.getString(3);
				String email = rs.getString(4);
				String username = rs.getString(5);
				memberVO = new MemberVO(user_id,pwd,phone,email,username);
				
				System.out.println(user_id);
			}
			

			
		} catch (SQLException e) {
			System.out.println("프로시저에서 에러 발생!");
			System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, cs);

		}
		
		return memberVO;		
		
	}
	
	

}
