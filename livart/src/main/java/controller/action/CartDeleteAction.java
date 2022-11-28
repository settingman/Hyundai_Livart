package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;

public class CartDeleteAction implements ControllerLivart{

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String productId = request.getParameter("productId");
		
		CartDAO cartDAO = new CartDAO();
		cartDAO.deleteProduct(productId);
		
		return new MyView("/WEB-INF/views/cart2.jsp");
	}

}
