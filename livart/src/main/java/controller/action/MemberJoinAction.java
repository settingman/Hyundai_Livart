package controller.action;

import java.io.IOException;


import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dto.ProductVO;



// 박성환
// 회원가입 페이지 이동
public class MemberJoinAction implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException { 
		
		return new MyView("/WEB-INF/views/userform.jsp");
		
		
	}

}
