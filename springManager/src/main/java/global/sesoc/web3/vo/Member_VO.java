package global.sesoc.web3.vo;

import lombok.Data;

@Data
public class Member_VO {
	private String id;
	private String password;
	private String name;
	private String phone;
	private String address;
	private String email;

	public Member_VO() {
	}

	public Member_VO(String id, String password, String name, String phone, String address, String email) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.email = email;
	}

}
