package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import dto.CartItemVO;
import dto.CartToOrderItemVO;
import dto.PreOrdersVO;

public class PreOrdersAction implements ControllerLivart {

	public MyView process(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		
		CartDAO cartDAO = new CartDAO();
		System.out.println("preorder 들어옴");
		ArrayList<CartItemVO> buyCartItemList = cartDAO.selectCartBuyItemList(userId);
		PreOrdersVO preOrderInfo = cartDAO.selectPreOrderInfo();
		
		request.setAttribute("buyCartItemList", buyCartItemList);
		request.setAttribute("preOrderInfo", preOrderInfo);
		
		return new MyView("/WEB-INF/views/orders.jsp");
		
	}
}
