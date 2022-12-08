package controller.action;

import java.io.IOException;


import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dto.ProductVO;



/*
 * 작성자 : 이진후
 * */
public class IndexAction implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ProductDAO productDAO = ProductDAO.getInstance();
		String c = request.getParameter("command"); //url 커맨드에해당하는 값 = 카테고리
		System.out.println(c);
		ArrayList<ProductVO> productList = productDAO.listKindProduct(c); 
		// 카테고리를 파라매터로 넘기고 함수호출
		int count = productDAO.countOfProduct(c); //카테고리별 상품 개수
		request.setAttribute("productList", productList);
		request.setAttribute("count", count);
		
		
		return new MyView("/WEB-INF/views/products.jsp");
		
		
	}

}
