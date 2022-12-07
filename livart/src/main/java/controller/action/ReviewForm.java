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



// 박성환
// 리뷰 작성폼으로 이동

public class ReviewForm implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String p_id = request.getParameter("p_id").trim();
		
		System.out.println("프로덕트 디테일은" + p_id);
		request.setAttribute("p_id",p_id);
		
		
		return new MyView("/WEB-INF/views/review_write.jsp");
	}

}
