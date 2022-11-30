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

public class RealReviewSave implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("리얼리뷰세이브 진입");
		
		
		PrintWriter out = response.getWriter();
		
		int review_id = 0;

		String review_title = request.getParameter("review_title");
		String review_content = request.getParameter("review_title");
		;

		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		String review_date = now.format(formatter);

		String interest = request.getParameter("interest");

		//String review_order = request.getParameter("review_order");
		String review_order = "test";

		String dwelling = request.getParameter("dwelling");

		String place = request.getParameter("place");

		String review_size = request.getParameter("review_size");

		String budget = request.getParameter("budget");

		String review_style = request.getParameter("review_style");

		String together = request.getParameter("together");

		//String user_user_id = request.getParameter("user_user_id");
		String user_user_id = "kibeom5118";

		//String product_p_id = request.getParameter("product_p_id");
		String product_p_id = "P100025656";
		
		//String photo_url = request.getParameter("photo_url");
		String photo_url = "test";

		RealReviewDAO realReviewDAO = RealReviewDAO.getInstance();
		RealReviewVO realReviewVO = new RealReviewVO(review_id, review_title, review_content, review_date, interest,
				review_order, dwelling, place, review_size, budget, review_style, together, user_user_id, product_p_id,
				photo_url);
		
		
		System.out.println(realReviewVO);
		
		
		realReviewDAO.saveReview(realReviewVO);

		request.setAttribute("realReviewList", realReviewVO);
		
		out.print(1);

		return new MyView("ajax");

	}

}
