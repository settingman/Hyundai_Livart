package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dto.ImageVO;
import dto.ProductVO;

public class ProductSortAction implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String p_id = request.getParameter("p_id").trim();// category 
		String cmd = request.getParameter("command").trim(); // 3가지경우 최신순, 가격 높은 , 낮은 경우
		ProductDAO productDAO = ProductDAO.getInstance();
		ArrayList<ProductVO> productList = null;
		if(cmd.equals("date")) {
			 productList = productDAO.getProductOrderByDate(p_id);
		}else if(cmd.equals("low")) {
			 productList = productDAO.getProductOrderByLowPrice(p_id);
		}else if(cmd.equals("high")) {
			 productList = productDAO.getProductOrderByHighPrice(p_id);
		}
		request.setAttribute("productList", productList);
		
		
		return new MyView("/WEB-INF/views/products.jsp");
	}

}
