package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartItemVO {

	private String img_url;
	private String p_id;
	private String p_name;
	private int p_price;
	private int d_price;
	private int p_deliveryfee;
	private int quantity;
	
}
