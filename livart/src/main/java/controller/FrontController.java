package controller;

import java.io.IOException;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.action.CartDeleteAction;
import controller.action.CartListAction;
import controller.action.ChangeQuantityAction;
import controller.action.ControllerLivart;
import controller.action.IndexAction;
import controller.action.MemberIdCheck;
import controller.action.MemberJoinAction;
import controller.action.MemberLoginConfrim;
import controller.action.MemberLoginView;
import controller.action.MemberLogout;
import controller.action.MemberSave;
import controller.action.MyView;
import controller.action.PreOrdersAction;
import controller.action.ProductDetailAction;
import controller.action.ProductSortAction;
import controller.action.RealReviewAction;
import controller.action.RealReviewListAction;






//성환
// 모든 요청 처리 ( fronController, return MyView : my view 에서 랜더링 )


@WebServlet(name = "frontController", urlPatterns = "/livart/*")
public class FrontController extends HttpServlet{
	
	private Map<String, ControllerLivart> controllerMap = new HashMap<>();
	
	
	public FrontController() {

        controllerMap.put("/livart/product", new IndexAction());
        controllerMap.put("/livart/memberjoin", new MemberJoinAction());
        controllerMap.put("/livart/membersave", new MemberSave());
        controllerMap.put("/livart/productdetail", new ProductDetailAction());
        controllerMap.put("/livart/sort", new ProductSortAction());
        controllerMap.put("/livart/login", new MemberLoginView());
        controllerMap.put("/livart/loginconfrim", new MemberLoginConfrim());
        controllerMap.put("/livart/logout", new MemberLogout());
        controllerMap.put("/livart/check", new MemberIdCheck());
        controllerMap.put("/livart/cart2", new CartListAction());
        controllerMap.put("/livart/cart2/delete", new CartDeleteAction());
        controllerMap.put("/livart/cart2/update", new ChangeQuantityAction());
        controllerMap.put("/livart/order", new PreOrdersAction());
        controllerMap.put("/livart/realreview", new RealReviewAction());
        controllerMap.put("/livart/review", new RealReviewListAction());

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	// 한글깨짐방지 
    	request.setCharacterEncoding("UTF-8");
    	response.setCharacterEncoding("UTF-8");
    	
        System.out.println("FrontController.service");

        String requestURI = request.getRequestURI();
        ControllerLivart controller = controllerMap.get(requestURI);
        
        
        if (controller == null) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        
        MyView view = controller.process(request, response);
        view.render(request, response);
    }
	
	

}
