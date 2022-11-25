package dto;

import lombok.Getter;
import lombok.Setter;

@Getter@Setter
public class MemberVO {
	
	private String user_id;
	private String pwd;
	private String phone;
	private String email;
	private String name;
	
	
	public MemberVO(){

    }


	public MemberVO(String user_id, String pwd, String phone, String email, String name) {
		this.user_id = user_id;
		this.pwd = pwd;
		this.phone = phone;
		this.email = email;
		this.name = name;
	}

    
	

}
