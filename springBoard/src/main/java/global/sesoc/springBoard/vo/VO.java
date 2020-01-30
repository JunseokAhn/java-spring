package global.sesoc.springBoard.vo;

import lombok.Data;

@Data
public class VO {
	private String userName;
	private String userPw;
	private String contents;

	public VO() {
		// TODO Auto-generated constructor stub
	}

	public VO(String userName, String userPw, String contents) {
		super();
		this.userName = userName;
		this.userPw = userPw;
		this.contents = contents;
	}
}
