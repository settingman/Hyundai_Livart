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

public class OrdersAction implements ControllerLivart{

   @Override
   public MyView process(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      
         request.setCharacterEncoding("utf-8");
         
         
         HttpSession session = request.getSession();
          String user_id = (String) session.getAttribute("loginUserid");
      
         OrderVO ordersVO = new OrderVO();
         CartDAO cartDAO =       CartDAO.getInstance();
         ArrayList<CartItemVO> cartItemList = cartDAO.selectCartBuyItemList(user_id);
         
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
         
         
         
         
         
         ordersVO.setUser_id(user_id);
   
         int order_id = cartDAO.insertOrder(cart_id, ordersVO.getOrderer(), ordersVO.getOrderer_phone(),
                        ordersVO.getAddress(), ordersVO.getReceiver(), ordersVO.getReceiver_phone(),
                        ordersVO.getMessage(), ordersVO.getUser_id());
   

         
         for(int i=0; i < cartItemList.size(); i++) {
            cartDAO.insertOrderItem(order_id, cartItemList.get(i).getP_id(), cartItemList.get(i).getQuantity(),cart_id);
         }
         
//         orderCompleteVO = cartDAO.findOrderInfo(order_id);
//         request.setAttribute("orderCompleteVO", orderCompleteVO);
         request.setAttribute("Address", addr);
         
         return new MyView("/WEB-INF/views/order_complete.jsp"); 
   }

}