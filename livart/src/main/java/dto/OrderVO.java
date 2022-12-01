package dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderVO {
	
	private String orderer;
	private String orderer_phone;
	private String receiver;
	private String receiver_phone;
	private String address;
	private String message;
	private String user_id;
}
