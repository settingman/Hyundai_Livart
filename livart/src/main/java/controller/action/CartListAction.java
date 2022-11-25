package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import dto.CartItemVO;

//cartList test
public class CartListAction implements Action{
	
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
		CartDAO cartDAO = CartDAO.getInstance();
		
		System.out.println("cartListaction 들어옴");
		String nextPage ="./jsp/cart/cart.jsp";
		System.out.println(nextPage);
		
		ArrayList<CartItemVO> cartItemList = cartDAO.selectCartItemList();
		request.setAttribute("cartItemList", cartItemList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}
	
	

}
