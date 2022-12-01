
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
		ArrayList<ImageVO> productDetailImage = imageDAO.listProductDetailImage(p_id);
		int count = imageDAO.countOfReviewImage(p_id);
		request.setAttribute("productVO", productVO); //상품 상세 정보
		request.setAttribute("imageList", imageList); //상품 리뷰 이미지
		request.setAttribute("productDetailImage", productDetailImage); //상품 상세 정보 이미지
		request.setAttribute("count", count); //상품 리뷰 이미지 개수
		request.setAttribute("p_id", p_id); //상품 리뷰 이미지 개수
		
		
		// 테스트
		System.out.println("프로덕트디테일"+ p_id);
				
		
		
		return new MyView("/WEB-INF/views/product_detail.jsp");
	}
}