package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReBuyVO {
	
	private String p_id;
	private String p_name;
	private int p_price;
	private int p_discount;
	private String p_category;
	private int p_deliveryfee;
	private String photo_url;
	private int rebuycount;
}
