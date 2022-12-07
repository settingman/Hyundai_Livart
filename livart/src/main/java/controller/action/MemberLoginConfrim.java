package controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dao.ProductDAO;
import dto.MemberVO;
import dto.ProductVO;


// 박성환
// 로그인 확인

public class MemberLoginConfrim implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		
		HttpSession session = request.getSession();
		MemberDAO memberDAO = MemberDAO.getInstance();
		PrintWriter out = response.getWriter();
		
		String login_id = request.getParameter("login_id");
		String login_pwd = request.getParameter("login_pwd");
		
		System.out.println("id: " + login_id+", pwd: "+login_pwd);
		
		MemberVO memberVO = memberDAO.getMember(login_id);
		System.out.println(memberVO.getPwd());
		System.out.println("로그인 시도.");
		
		if(memberVO!=null) {
			if(memberVO.getPwd().equals(login_pwd)) {
				System.out.println("로그인 성공");
				session.removeAttribute("user_id"); // 잘모르겠음.
				session.setAttribute("loginUser", memberVO);
				session.setAttribute("loginUserid", login_id);
				out.print(1);
				return new MyView("ajax"); // 로그인 성공페이지
				
			}
			else {
				System.out.println("로그인 실패1");
				out.print(2);
				return new MyView("ajax");
			}
			
		}else {
			System.out.println("로그인 실패2");
			return new MyView("ajax");
		}
		
	
		
	}

}
