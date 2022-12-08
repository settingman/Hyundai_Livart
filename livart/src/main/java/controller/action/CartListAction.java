package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDAO;
import dto.CartItemVO;

// 기범 & 진후
public class CartListAction implements ControllerLivart{
	
	public MyView process(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		CartDAO cartDAO = CartDAO.getInstance(); 
		String pid = request.getParameter("pid").trim(); // 상품 id 를 저장
		String uid = request.getParameter("uid").trim(); // 회원 id 를 저장
		
		int qty = Integer.parseInt(request.getParameter("qty").trim()); // 장바구니에 저장할 수량을 저장
		cartDAO.insertCartItem(qty, pid, uid);  // 장바구니 테이블에 자신에게 맞는 카트 id를 생성 후 상품 삽입
		
		HttpSession session = request.getSession();  // session을 통해 로그인되어 있는 회원 id 값을 저장
	    String user_id = (String) session.getAttribute("loginUserid");
		
		ArrayList<CartItemVO> cartItemList = cartDAO.selectCartBuyItemList(user_id);  // 장바구니 테이블에 파라미터로 넘겨주는 user_id
																					  // 가 가지고 있는 상품 목록을 ArrayList에 저장
		request.setAttribute("cartItemList", cartItemList);	 // jsp에 arraylist에 저장한 값을 전달
		
		return new MyView("/WEB-INF/views/cart2.jsp");  // 보여주고 싶은 화면을 return
	}
}


