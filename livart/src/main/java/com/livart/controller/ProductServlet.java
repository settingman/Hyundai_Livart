package com.livart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.livart.controller.Action.Action;

@WebServlet("/product")
public class ProductServlet extends HttpServlet{
	private static final long serialVersiontUID = 1L;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String command = request.getParameter("command");
		System.out.println("public서블릿 요청 받음 확인"+command);
		
		ActionFactory af = ActionFactory.getInstance(); //액션객체 생성
		Action action = af.getAction(command);
		
		if(action != null) {
			action.execute(request, response);
		}
	}
	
}
