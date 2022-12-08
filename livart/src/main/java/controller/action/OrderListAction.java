package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrderDAO;
import dto.CartItemVO;
import dto.OrderItemVO;

//기범
public class OrderListAction implements ControllerLivart{
	
	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
	    String user_id = (String) session.getAttribute("loginUserid");	    
	    
	    OrderItemVO orderItemVO = new OrderItemVO();
	    OrderDAO orderDAO = OrderDAO.getInstance();
	    
	    String cmd = request.getParameter("command"); 
	    
	    if(cmd.equals("list")) { // 쿼리스트링 값(cmd)이 list 이면 구매내역 조회
	    	ArrayList<OrderItemVO> orderItemList = orderDAO.selectOrderItem(user_id);
	    	request.setAttribute("orderItemList", orderItemList); //db에 접근하여 요청 값 저장
	    }
	    else if(cmd.equals("delete")) { // 쿼리스트링 값(cmd)이 delete이면 구매내역 삭제
	    	int o_id = Integer.parseInt(request.getParameter("orderid")); // 주문 id 저장
	    	
	    	String p_id = request.getParameter("productid"); // 상품 id 저장
	    	orderDAO.deleteOrderItem(p_id, o_id);     // 상품 id, 주문 id 인자로 전달
	    	ArrayList<OrderItemVO> orderItemList = orderDAO.selectOrderItem(user_id);
	    	// 주문 취소 후 구매내역 다시 조회
	    	return new MyView("/livart/orderlist?command=list"); // 주문취소했을 경우 쿼리스트링(command)을 list로 설정 후 렌더링
	    } 
		
	    return new MyView("/WEB-INF/views/orderlist.jsp");
	}

}
