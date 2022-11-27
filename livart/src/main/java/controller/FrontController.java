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
//import controller.action.MemberJoinAction;
//import controller.action.MemberSave;
import controller.action.MyView;
import controller.action.PreOrdersAction;





@WebServlet(name = "frontController", urlPatterns = "/livart/*")
public class FrontController extends HttpServlet{
	
	private Map<String, ControllerLivart> controllerMap = new HashMap<>();
	
	
	public FrontController() {
        controllerMap.put("/livart/cart2", new CartListAction());
        controllerMap.put("/livart/cart2/delete", new CartDeleteAction());
//        controllerMap.put("/livart/cart2/change", new ChangeQuantityAction());
        controllerMap.put("/livart/product", new IndexAction());
//        controllerMap.put("/livart/memberjoin", new MemberJoinAction());
//        controllerMap.put("/livart/membersave", new MemberSave());
        controllerMap.put("/livart/orders", new PreOrdersAction());

       
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("FrontController.service");

        String requestURI = request.getRequestURI();
        System.out.println("reqUrl: " + requestURI);
        ControllerLivart controller = controllerMap.get(requestURI);
        
        
        if (controller == null) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        
        MyView view = controller.process(request, response);
        view.render(request, response);
    }
	
	

}
