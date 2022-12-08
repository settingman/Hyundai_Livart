package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderItemVO {
	
	private String p_id;
	private String p_url;
	private String p_name;
	private int quantity;
	private int p_price;
	private int o_id;
	private String d_status;
	private String r_status;
	private String created_at;
}
