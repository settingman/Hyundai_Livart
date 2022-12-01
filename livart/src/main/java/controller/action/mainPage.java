package controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RealReviewDAO;
import dto.MemberVO;
import dto.RealReviewVO;


// 성환
// 메인페이지 이동

public class mainPage implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	
		
		
		return new MyView("/WEB-INF/views/main.jsp");
	}

}
