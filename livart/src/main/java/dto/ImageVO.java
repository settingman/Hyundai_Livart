package dto;

import lombok.Getter;
import lombok.Setter;

@Getter@Setter
public class ImageVO {
	private int photo_id;
	private String classification;
	private String product_p_id;
	private int review_review_id;
	private String photo_url;
	
	public ImageVO() {}
	
	public ImageVO(int photo_id, String classification, String product_p_id, int review_review_id, String photo_url) {
		
		this.photo_id = photo_id;
		this.classification = classification;
		this.product_p_id = product_p_id;
		this.review_review_id = review_review_id;
		this.photo_url = photo_url;
	}
	
	
	
	
	
	
}

