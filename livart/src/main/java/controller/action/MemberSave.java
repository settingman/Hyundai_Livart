package controller.action;

import java.io.IOException;



import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dto.MemberRepository;
import dto.MemberVO;
import dto.ProductVO;






public class MemberSave implements ControllerLivart {

    private MemberRepository memberRepository = MemberRepository.getInstance();

    @Override
    public MyView process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_id = request.getParameter("user_id");
        String pwd = request.getParameter("pwd");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String name = request.getParameter("name");

        MemberVO member = new MemberVO(user_id,pwd,phone,email,name);
        memberRepository.save(member);

        //Model에 데이터를 보관한다.
        request.setAttribute("member", member);

       return new MyView("/WEB-INF/views/save-result.jsp");
    }
}
