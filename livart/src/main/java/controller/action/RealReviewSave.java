package controller.action;

import java.io.File;

import java.io.IOException;

import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.ImageDAO;
import dao.RealReviewDAO;
import dto.ImageVO;
import dto.RealReviewVO;

// 박성환
// 리얼 리뷰 저장, 사진 저장
public class RealReviewSave implements ControllerLivart {

	@Override
	public MyView process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("리얼리뷰세이브 진입");		
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("loginUserid");				
		
		MultipartRequest multi = null;
		int maxSize = 10 * 1024 * 1024; 
		String savePath = request.getSession().getServletContext().getRealPath("/images/review");
		
		try {
			multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String fileName = multi.getFilesystemName("mnImgPathFile"); 
		String test ="//localhost:8080/images/review/";
		String  photo_url = test + fileName;
		
		System.out.println(photo_url);
				
		PrintWriter out = response.getWriter();				
		String review_title =  multi.getParameter("titl");
		String review_content = multi.getParameter("blbTplts[].txt");		
		
		

		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");
		String review_date = now.format(formatter);

		String interest = multi.getParameter("filterVO.filtCd1");

		String review_order = "test";

		String dwelling = multi.getParameter("filterVO.filtCd2");

		String place = multi.getParameter("filterVO.filtCd3");

		String review_size = multi.getParameter("filterVO.filtCd4");

		String budget = multi.getParameter("filterVO.filtCd5");

		String review_style = multi.getParameter("filterVO.filtCd6");

		String together = multi.getParameter("filterVO.filtCd7");


		String user_user_id = user_id;
		
		
		System.out.println("프로턱트 아이디는");
		String product_p_id = multi.getParameter("p_id").trim();
		
		System.out.println("프로턱트 아이디는" + product_p_id);
		
		
		int review_id = 0;
		
		
		

		RealReviewDAO realReviewDAO = RealReviewDAO.getInstance();
		ImageDAO imageDAO = ImageDAO.getInstance(); 
		
		RealReviewVO realReviewVO = new RealReviewVO(review_id, review_title, review_content, review_date, interest,
				review_order, dwelling, place, review_size, budget, review_style, together, user_user_id, product_p_id,
				photo_url);
		
		
		System.out.println(realReviewVO);
		
	
		review_id =realReviewDAO.saveReview(realReviewVO);
		
		System.out.println(review_id);
		
		
		ImageVO imageVO = new ImageVO(0,"리뷰",product_p_id,review_id,photo_url);
		imageDAO.insertImage(imageVO);

		request.setAttribute("realReviewList", realReviewVO);
		
		out.print(1);

		return new MyView("redirect::/livart/review"); // 리뷰페이지로이동.

	}

}
