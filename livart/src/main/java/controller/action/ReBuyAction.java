package controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReBuyDAO;
import dto.ReBuyVO;

/*
 * 작성자 : 이진후
 * 
 * */

public class ReBuyAction implements ControllerLivart{

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ReBuyDAO rebuydao = ReBuyDAO.getInstance();
		ArrayList<ReBuyVO> rebuyRankList = rebuydao.getListReBuyProductRank();
		
		request.setAttribute("rebuyRankList", rebuyRankList);
		
		
		return new MyView("/WEB-INF/views/rank_rebuyitems.jsp");
	}

}
