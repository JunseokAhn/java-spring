package global.sesoc.web3.vo;

import lombok.Data;

@Data
public class VO {

	public VO() {
		// TODO Auto-generated constructor stub
	}
	public VO(String name, int age, String address) {
		super();
		this.name = name;
		this.age = age;
		this.address = address;
	}

	private String name;
	private int age;
	private String address;
}
