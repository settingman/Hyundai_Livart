package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;

public class ChangeQuantityAction implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String product_id = request.getParameter("productId");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		System.out.print("여긴 들어옴");
		
		CartDAO cartDAO = new CartDAO();
		cartDAO.changeQty(product_id, quantity);
		
		return new MyView("/WEB-INF/views/cart2.jsp");
	}

}
