package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RealReviewVO {
	private int review_id;
	private String review_title;
	private String review_content;
	private String review_date;
	private String interest;
	private String review_order;
	private String dwelling;
	private String place;
	private String review_size;
	private String budget;
	private String review_style;
	private String together;
	private String user_user_id;
	private String product_p_id;
	
	private String photo_url;//join 위한 변수
 
	public RealReviewVO() {
		
	}
	public RealReviewVO(int review_id, String review_title, String review_content, String review_date, String interest,
			String review_order, String dwelling, String place, String review_size, String budget, String review_style,
			String together, String user_user_id, String product_p_id, String photo_url) {
		this.review_id = review_id;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_date = review_date;
		this.interest = interest;
		this.review_order = review_order;
		this.dwelling = dwelling;
		this.place = place;
		this.review_size = review_size;
		this.budget = budget;
		this.review_style = review_style;
		this.together = together;
		this.user_user_id = user_user_id;
		this.product_p_id = product_p_id;
		this.photo_url = photo_url;
	}
	
	
}
