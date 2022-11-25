package dto;

public class CartItemVO {

	private String img_url;
	private String p_name;
	private int p_price;
	private int d_price;
	private int p_deliveryfee;
	private int quantity;
	
	
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getD_price() {
		return d_price;
	}
	public void setD_price(int d_price) {
		this.d_price = d_price;
	}
	public int getP_deliveryfee() {
		return p_deliveryfee;
	}
	public void setP_deliveryfee(int p_deliveryfee) {
		this.p_deliveryfee = p_deliveryfee;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	
}
