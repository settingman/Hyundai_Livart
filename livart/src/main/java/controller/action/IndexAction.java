package controller.action;

import java.io.IOException;


import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dto.ProductVO;




public class IndexAction implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ProductDAO productDAO = ProductDAO.getInstance();
		String c = request.getParameter("command");
		System.out.println(c);
		ArrayList<ProductVO> productList = productDAO.listKindProduct(c);
		
		request.setAttribute("productList", productList);
		
		
		
		return new MyView("/WEB-INF/views/products.jsp");
		
		
	}

}
