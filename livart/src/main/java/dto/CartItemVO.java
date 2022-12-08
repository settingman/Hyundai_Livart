package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartItemVO {

	private String img_url;
	private String p_id;
	private String p_name;
	private int cart_id;
	private int p_price;
	private int d_price;	
	private int p_deliveryfee;
	private int quantity;
	private String user_id;
	@Override
	public String toString() {
		return "CartItemVO [img_url=" + img_url + ", p_id=" + p_id + ", p_name=" + p_name + ", cart_id=" + cart_id
				+ ", p_price=" + p_price + ", d_price=" + d_price + ", p_deliveryfee=" + p_deliveryfee + ", quantity="
				+ quantity + ", user_id=" + user_id + "]";
	}
}
