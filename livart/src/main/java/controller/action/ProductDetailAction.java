package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ImageDAO;
import dao.ProductDAO;
import dto.ImageVO;
import dto.ProductVO;

public class ProductDetailAction implements ControllerLivart{

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String p_id = request.getParameter("p_id").trim();
		
		ProductDAO productDAO = ProductDAO.getInstance();
		ProductVO productVO = productDAO.getProduct(p_id);
		ImageDAO imageDAO = ImageDAO.getInstance();
		ArrayList<ImageVO> imageList = imageDAO.listProductReviewImage(p_id);
		request.setAttribute("productVO", productVO);
		request.setAttribute("imageList", imageList);
		
		return new MyView("/WEB-INF/views/product_detail.jsp");
		
	}

	
	
}
