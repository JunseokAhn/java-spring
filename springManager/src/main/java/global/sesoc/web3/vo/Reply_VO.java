package global.sesoc.web3.vo;

import lombok.Data;

@Data
public class Reply_VO {

	private String replynum;
	private String boardnum;
	private String id;
	private String text;
	private String inputdate;

	Reply_VO() {
	}

	public Reply_VO(String boardnum, String id, String text) {
		super();
		this.boardnum = boardnum;
		this.id = id;
		this.text = text;
	}

}
