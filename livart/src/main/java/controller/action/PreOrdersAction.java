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

public class PreOrdersAction implements ControllerLivart {

   public MyView process(HttpServletRequest request, HttpServletResponse response) 
         throws ServletException, IOException {
   
      //String userId = request.getParameter("userId");
      
      HttpSession session = request.getSession();
       String user_id = (String) session.getAttribute("loginUserid");
       
      CartDAO cartDAO =       CartDAO.getInstance();
      System.out.println("preorder 들어옴");
      ArrayList<CartItemVO> buyCartItemList = cartDAO.selectCartBuyItemList(user_id);
      PreOrdersVO preOrderInfo = cartDAO.selectPreOrderInfo(user_id);
      
      System.out.println(preOrderInfo.getOrderer());
      
      request.setAttribute("buyCartItemList", buyCartItemList);
      request.setAttribute("preOrderInfo", preOrderInfo);
      
      return new MyView("/WEB-INF/views/orders.jsp"); 
//      System.out.println("preordersaction에 들어옴");
//      
//      int index =0;
//      String pid = "productId[";
//      String price = "productPrice[";
//      String qua = "quantity[";
//      while(request.getParameter(pid+index+"]")!=null) {
//         System.out.println(pid+index+"]");
//         index++;
//      }
      
//      return null;
      
   }
}