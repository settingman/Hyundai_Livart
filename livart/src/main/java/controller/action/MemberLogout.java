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




//성환
//로그아웃

public class MemberLogout implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		
		
		String url = "redirect::/livart/main"; // 메인페이지로 리턴
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("loginUserid"); 
				
		
		//redirect 로 바꾸기.
		return new MyView(url);
		
	}

}
