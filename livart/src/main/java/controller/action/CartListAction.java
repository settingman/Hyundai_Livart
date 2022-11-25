package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import dto.CartItemVO;


//cartList test
public class CartListAction implements ControllerLivart{
	
	public MyView process(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		CartDAO cartDAO = new CartDAO();			
		ArrayList<CartItemVO> cartItemList = cartDAO.selectCartItemList();
		request.setAttribute("cartItemList", cartItemList);
		
		
		
		return new MyView("/WEB-INF/views/cart.jsp");
		
	}
	
	

}
