package global.sesoc.Ajax_Board.vo;

//리플 VO
public class Comment {
	int num;
	String name;
	String text;

	public Comment() {
	}
	
	public Comment(int num, String name, String text) {
		this.num = num;
		this.name = name;
		this.text = text;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return "Comment [num=" + num + ", name=" + name + ", text=" + text + "]";
	}
}
