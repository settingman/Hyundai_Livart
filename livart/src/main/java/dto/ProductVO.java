package dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;


@Getter@Setter
public class ProductVO {
	private String p_id;
	private String p_name;
	private int p_price;
	private int p_discount;
	private String p_category;
	private Date p_date;
	private int p_deliveryfee;
	
	private String photo_url;//join 하기위한 컬럼입니다
	private int realprice;// 할인된가격으로 필터링하기 위한 변수입니다
	
}
