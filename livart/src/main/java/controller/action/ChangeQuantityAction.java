package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import dto.CartItemVO;

public class ChangeQuantityAction implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String product_id = request.getParameter("productId");
		int quantity = Integer.parseInt(request.getParameter("productCount"));
		
		CartDAO cartDAO = new CartDAO();
		
		ArrayList<CartItemVO> cartItemList = cartDAO.changeQty(product_id, quantity);
		request.setAttribute("cartItemList", cartItemList);
		
		return new MyView("/WEB-INF/views/cart2.jsp");
	}

}
