package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RealReviewDAO;
import dto.RealReviewVO;

public class RealReviewListAction implements ControllerLivart{

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<RealReviewVO> realReviewList = new ArrayList<>();
		RealReviewDAO realReviewDAO = RealReviewDAO.getInstance();
		realReviewList = realReviewDAO.getListRealReview();
		request.setAttribute("realReviewList", realReviewList);
		
		return new MyView("/WEB-INF/views/review.jsp");
	}

}
