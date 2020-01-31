package global.sesoc.springBoard.vo;

import lombok.Data;

@Data
public class VO {
	private int num;
	private String name;
	private String password;
	private String contents;
	private String inputdate;

	public VO() {
		// TODO Auto-generated constructor stub
	}

	public VO(int num, String name, String password, String contents, String inputdate) {
		super();
		this.num = num;
		this.name = name;
		this.password = password;
		this.contents = contents;
		this.inputdate = inputdate;
	}

	public VO(String name, String password, String contents) {
		super();
		this.name = name;
		this.password = password;
		this.contents = contents;
	}

}
