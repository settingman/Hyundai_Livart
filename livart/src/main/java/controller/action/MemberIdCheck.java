package controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthOptionPaneUI;

import dao.CartDAO;
import dao.MemberDAO;

public class MemberIdCheck implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String check = request.getParameter("checkid");
		System.out.println(check);
		
		PrintWriter out = response.getWriter();
		
		if(check.equals("")) {
			out.print(2);
			return new MyView(null);
		}
		
		
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		int temp = memberDAO.confirmID(check);
		
		
		System.out.println("1은 중복있음 0은 중복없음: temp 값은 "+temp);
		
		
	
		out.print(temp);
		
		
		
		
		System.out.println("아웃이되는가");
		
		return new MyView("ajax");
		
		
		
		
		
		
		
		
		
	}

}
