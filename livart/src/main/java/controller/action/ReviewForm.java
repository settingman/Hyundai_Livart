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

public class ReviewForm implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String p_id = request.getParameter("p_id").trim();
		String o_id = request.getParameter("o_id"); // 기범 수정
		
		System.out.println("프로덕트 디테일은" + p_id);
		request.setAttribute("p_id",p_id);
		
		System.out.println("오더 디테일은" + o_id); //기범 수정
		request.setAttribute("o_id",o_id); //기범 수정
		
		
		return new MyView("/WEB-INF/views/review_write.jsp");
	}

}
