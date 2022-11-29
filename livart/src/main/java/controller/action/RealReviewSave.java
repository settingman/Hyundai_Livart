package controller.action;

import java.io.IOException;
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
		
		
		 int review_id = 0;
		 String review_title=request.getParameter("user_id");
		 String review_content;
		 String review_date;
		 String interest;
		 String review_order;
		 String dwelling;
		 String place;
		 String review_size;
		 String budget;
		 String review_style;
		 String together;
		 String user_user_id;
		 String product_p_id;
		 String photo_url;
		
		RealReviewDAO realReviewDAO = RealReviewDAO.getInstance();
		RealReviewVO realReviewVO = new RealReviewVO(review_id,review_title,review_content,review_date,interest,review_order,dwelling,place,review_size,budget,review_style,together,user_user_id,product_p_id,photo_url);
				
				
				
		request.setAttribute("realReviewList", realReviewVO);
		
		return new MyView("/WEB-INF/views/review.jsp");
		
		
		
		
		
		
		
	
	}

}
