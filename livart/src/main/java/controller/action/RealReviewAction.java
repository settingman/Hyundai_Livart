package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ImageDAO;
import dao.RealReviewDAO;
import dto.ImageVO;
import dto.RealReviewVO;

public class RealReviewAction implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pid = request.getParameter("pid").trim();
		String cmd = request.getParameter("command").trim();
		RealReviewDAO realReviewDAO = RealReviewDAO.getInstance();
		ImageDAO imageDAO = ImageDAO.getInstance();
		RealReviewVO realReviewVO = null;
		String imageURL = "";
		realReviewVO = realReviewDAO.getRealReview(cmd);
		imageURL = imageDAO.ReviewImage(cmd);
		request.setAttribute("realReviewVO", realReviewVO);
		request.setAttribute("imageURL", imageURL);
		request.setAttribute("pid",pid);
		return new MyView("/WEB-INF/views/real_review.jsp") ;
	}

}
