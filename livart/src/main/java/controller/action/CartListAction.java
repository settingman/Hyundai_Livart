package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDAO;
import dto.CartItemVO;


//cartList test
public class CartListAction implements ControllerLivart{
	
	public MyView process(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		CartDAO cartDAO =       CartDAO.getInstance();
		String pid = request.getParameter("pid").trim();
		String uid = request.getParameter("uid").trim();
		int qty = Integer.parseInt(request.getParameter("qty").trim());
		cartDAO.insertCartItem(qty, pid, uid);
		
		HttpSession session = request.getSession();
	    String user_id = (String) session.getAttribute("loginUserid");
		
		ArrayList<CartItemVO> cartItemList = cartDAO.selectCartBuyItemList(user_id);
		request.setAttribute("cartItemList", cartItemList);
		
		return new MyView("/WEB-INF/views/cart2.jsp");
	}
	
	

}
