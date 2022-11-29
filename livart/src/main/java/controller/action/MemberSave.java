package controller.action;

import java.io.IOException;




import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dao.ProductDAO;
import dto.MemberRepository;
import dto.MemberVO;
import dto.ProductVO;




// 성환
// 회원가입 및 회원저장 


public class MemberSave implements ControllerLivart {

    private MemberRepository memberRepository = MemberRepository.getInstance();

    @Override
    public MyView process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	// 데이터 넘길때 한글 깨질때 사용
    	// frontcontroller에 선언 : 공통 적용
    	//request.setCharacterEncoding("UTF-8");
    	
    	
    	HttpSession session = request.getSession();
    	
        String user_id = request.getParameter("user_id");
        String pwd = request.getParameter("pwd");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String username = request.getParameter("username");

        MemberVO member = new MemberVO(user_id,pwd,phone,email,username);
                
        
        session.setAttribute("user_id",request.getParameter("user_id"));

        //Model에 데이터를 보관한다.
        request.setAttribute("member", member);
        
        
        MemberDAO memberDAO = MemberDAO.getInstance();
        memberDAO.insertMember(member);
        
       
        
        

       return new MyView("redirect::/livart/login");
    }
}
