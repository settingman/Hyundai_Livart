package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import dao.PreOrdersDAO;
import dto.CartItemVO;
import dto.PreOrdersVO;

public class PreOrdersAction implements ControllerLivart {

	public MyView process(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		PreOrdersDAO preOrdersDAO = new PreOrdersDAO();
		PreOrdersVO preOrderInfo = preOrdersDAO.selectPreOrderInfo();
		request.setAttribute("preOrderInfo", preOrderInfo);
		
		return new MyView("/WEB-INF/views/orders.jsp");
		
	}
}
