package dto;

public class ImageVO {
	private int photo_id;
	private String classification;
	private String product_p_id;
	private int review_review_id;
	private String photo_url;
	public int getPhoto_id() {
		return photo_id;
	}
	public void setPhoto_id(int photo_id) {
		this.photo_id = photo_id;
	}
	public String getClassification() {
		return classification;
	}
	public void setClassification(String classification) {
		this.classification = classification;
	}
	public String getProduct_p_id() {
		return product_p_id;
	}
	public void setProduct_p_id(String product_p_id) {
		this.product_p_id = product_p_id;
	}
	public int getReview_review_id() {
		return review_review_id;
	}
	public void setReview_review_id(int review_review_id) {
		this.review_review_id = review_review_id;
	}
	public String getPhoto_url() {
		return photo_url;
	}
	public void setPhoto_url(String photo_url) {
		this.photo_url = photo_url;
	}
}
