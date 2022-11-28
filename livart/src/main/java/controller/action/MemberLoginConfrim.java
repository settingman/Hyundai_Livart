package controller.action;

import java.io.IOException;


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




public class MemberLoginConfrim implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		
		
		String url = "/main.jsp"; //로그인 실패페이지
		HttpSession session = request.getSession();
		MemberDAO memberDAO = MemberDAO.getInstance();
		
		
		
		String login_id = request.getParameter("login_id");
		String login_pwd = request.getParameter("login_pwd");
		
		System.out.println("id" + login_id+", pwd: "+login_pwd);
		
		MemberVO memberVO = memberDAO.getMember(login_id);
		
		
		
		if(memberVO!=null) {
			if(memberVO.getPwd().equals(login_pwd)) {
				session.removeAttribute("user_id"); // 잘모르겠음.
				session.setAttribute("loginUser", memberVO);
				session.setAttribute("loginUserid", login_id);
				url = "/main.jsp"; // 로그인 성공페이지
				System.out.println("로그인성공");
			}
			else {
				System.out.println("로그인 실패");
			}
			
		}
		
		//redirect 로 바꾸기.
		return new MyView(url);
		
	}

}
