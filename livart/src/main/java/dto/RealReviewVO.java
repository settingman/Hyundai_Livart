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
}
