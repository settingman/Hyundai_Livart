package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDAO;
import dto.CartItemVO;
import dto.OrderVO;

//기범
public class OrdersAction implements ControllerLivart{

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.setCharacterEncoding("utf-8");
			
			
			HttpSession session = request.getSession();
		    String user_id = (String) session.getAttribute("loginUserid");
		
			OrderVO ordersVO = new OrderVO();
			CartDAO cartDAO = CartDAO.getInstance();
			ArrayList<CartItemVO> cartItemList = cartDAO.selectCartBuyItemList(user_id);
			// 회원이 구매한 상품들을 arraylist에 저장
			
			int cart_id = Integer.parseInt(request.getParameter("cartId")); //회원의 장바구니 id 저장
			ordersVO.setOrderer(request.getParameter("ordManNm")); // 주문자 이름 저장
			String o_phn = request.getParameter("ordManHp1") + request.getParameter("ordManHp2") + request.getParameter("ordManHp3");
			ordersVO.setOrderer_phone(o_phn); // 주문자 전화번호 저장
			String addr = request.getParameter("postNo");
			addr += " ";
			addr += request.getParameter("draddr1");
			addr += " ";
			addr += request.getParameter("draddr2");
			ordersVO.setAddress(addr); // API 통해 입력받은 주소 저장
			ordersVO.setReceiver(request.getParameter("rcvManNm")); // 받는 사람 이름 저장
			String r_phn = request.getParameter("rcvManHp1") + request.getParameter("rcvManHp2") + request.getParameter("rcvManHp3");
			ordersVO.setReceiver_phone(r_phn); // 받는 사람 전화번호 저장
			ordersVO.setMessage(request.getParameter("delivery-request")); // 배송메세지 저장
			
			
			
			
			
			ordersVO.setUser_id(user_id);  // 로그인한 유저 id 저장
			
			int order_id = cartDAO.insertOrder(cart_id, ordersVO.getOrderer(), ordersVO.getOrderer_phone(),
								ordersVO.getAddress(), ordersVO.getReceiver(), ordersVO.getReceiver_phone(),
								ordersVO.getMessage(), ordersVO.getUser_id()); // orders 테이블에 저장되어야 하는 정보들 인자로 전달
	

			
			for(int i=0; i < cartItemList.size(); i++) {
				cartDAO.insertOrderItem(order_id, cartItemList.get(i).getP_id(), cartItemList.get(i).getQuantity(),cart_id);
			}  // 하나의 order_id에는 여러개의 상품이 주문될 수 있기 때문에 구매한 상품 수 만큼 반복문을 돌며 ordersitem에 저장
			   // 이때 하나의 insertOrderItem이 호출되어 ordersitem에 insert 될때 trigger를 이용하여 ordersitem에 저장된 p_id 를 cartitem에서 delete
			
//			orderCompleteVO = cartDAO.findOrderInfo(order_id);
//			request.setAttribute("orderCompleteVO", orderCompleteVO);
			request.setAttribute("Address", addr);
			
			return new MyView("/WEB-INF/views/order_complete.jsp"); 
	}

}
