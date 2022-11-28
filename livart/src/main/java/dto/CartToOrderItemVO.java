package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartToOrderItemVO {
	
	private String prodcut_id;
	private int only_price;
	private int quantity;
}
