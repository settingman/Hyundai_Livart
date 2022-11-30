package controller.action;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyView {
	
	private String viewPath;

    public MyView(String viewPath) {
        this.viewPath = viewPath;
    }

    public void render(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
    	
    	System.out.println("my view 접근");
    	System.out.println(viewPath);
    	
    	
    	
    	 if(viewPath.equals("ajax")){
     		System.out.println("ajax 실행입니다.");
     		
     	}
    	else if(!viewPath.contains("redirect::")) {
    		System.out.println("redirect!!");
    		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPath);
            dispatcher.forward(request, response);
    	}
    	
    	else {
    		viewPath=viewPath.replace("redirect::","");
    		response.sendRedirect(viewPath);
    	}
    	
    	
    	System.out.println("my view 끝");
        
    }

    public void render(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        modelToRequestAttribute(model, request);
        RequestDispatcher dispatcher = request.getRequestDispatcher(viewPath);
        dispatcher.forward(request, response);
    }

    private void modelToRequestAttribute(Map<String, Object> model, HttpServletRequest request) {
        model.forEach((key, value) -> request.setAttribute(key, value));
    }

}
