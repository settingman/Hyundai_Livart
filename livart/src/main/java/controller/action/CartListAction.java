package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import dto.CartItemVO;

public class CartListAction implements Action{
	
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		CartDAO cartDAO = new CartDAO();
		String nextPage ="./jsp/cart/cart.jsp";
		
		ArrayList<CartItemVO> cartItemList = cartDAO.selectCartItemList();
		request.setAttribute("cartItemList", cartItemList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}
	
	

}
