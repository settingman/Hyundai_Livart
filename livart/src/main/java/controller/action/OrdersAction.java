package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import dto.CartItemVO;
import dto.OrderVO;

public class OrdersAction implements ControllerLivart{

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.setCharacterEncoding("utf-8");
		
			OrderVO ordersVO = new OrderVO();
			CartDAO cartDAO = new CartDAO();
			ArrayList<CartItemVO> cartItemList = cartDAO.selectCartItemList();
			
			int cart_id = Integer.parseInt(request.getParameter("cartId"));
			ordersVO.setOrderer(request.getParameter("ordManNm"));
			String o_phn = request.getParameter("ordManHp1") + request.getParameter("ordManHp2") + request.getParameter("ordManHp3");
			ordersVO.setOrderer_phone(o_phn);
			String addr = request.getParameter("postNo");
			addr += " ";
			addr += request.getParameter("draddr1");
			addr += " ";
			addr += request.getParameter("draddr2");
			ordersVO.setAddress(addr);
			ordersVO.setReceiver(request.getParameter("rcvManNm"));
			String r_phn = request.getParameter("rcvManHp1") + request.getParameter("rcvManHp2") + request.getParameter("rcvManHp3");
			ordersVO.setReceiver_phone(r_phn);
			ordersVO.setMessage(request.getParameter("delivery-request"));
			
			
			//로그인 세션 추후에 받아야 하는 값
			ordersVO.setUser_id("kibeom5118");
	
			int order_id = cartDAO.insertOrder(cart_id, ordersVO.getOrderer(), ordersVO.getOrderer_phone(),
								ordersVO.getAddress(), ordersVO.getReceiver(), ordersVO.getReceiver_phone(),
								ordersVO.getMessage(), ordersVO.getUser_id());
	

			
			for(int i=0; i < cartItemList.size(); i++) {
				cartDAO.insertOrderItem(order_id, cartItemList.get(i).getP_id(), cartItemList.get(i).getQuantity(),cart_id);
			}
			
			return new MyView("/WEB-INF/views/cart2.jsp"); 
	}

}
