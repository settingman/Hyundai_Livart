package com.livart.controller.Action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.livart.dao.ProductDAO;
import com.livart.dto.ProductVO;

public class IndexAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "/products.jsp";
		ProductDAO productDAO = ProductDAO.getInstance();
		String c = request.getParameter("command");
		System.out.println(c);
		ArrayList<ProductVO> productList = productDAO.listKindProduct(c);
		
		request.setAttribute("productList", productList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
