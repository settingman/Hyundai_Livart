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
		
		CartDAO cartDAO = new CartDAO();
//		int changeQuantity = cartDAO.changeQty();
		return new MyView("/WEB-INF/views/cart2.jsp");
	}

}
