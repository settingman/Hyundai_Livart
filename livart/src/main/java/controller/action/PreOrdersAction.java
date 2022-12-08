package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDAO;
import dto.CartItemVO;
import dto.CartToOrderItemVO;
import dto.PreOrdersVO;

//기범
public class PreOrdersAction implements ControllerLivart {

   public MyView process(HttpServletRequest request, HttpServletResponse response) 
         throws ServletException, IOException {
      
      HttpSession session = request.getSession();
       String user_id = (String) session.getAttribute("loginUserid");
       
      CartDAO cartDAO = CartDAO.getInstance();
      ArrayList<CartItemVO> buyCartItemList = cartDAO.selectCartBuyItemList(user_id); 
      // 로그인한 회원의 장바구니에 담긴 상품을 Arraylist에 저장
      
      PreOrdersVO preOrderInfo = cartDAO.selectPreOrderInfo(user_id); // 주문자 정보를 미리 불러오기
      
      request.setAttribute("buyCartItemList", buyCartItemList); // 장바구니에 담긴 상품 order.jsp에 전달하기위해 저장
      request.setAttribute("preOrderInfo", preOrderInfo); // 주문자 정보를 order.jsp에 전달하기 위해 저장
      
      return new MyView("/WEB-INF/views/orders.jsp"); // order.jsp로 forward 방식으로 전달
      
   }
}


