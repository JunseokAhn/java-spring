package global.sesoc.web3.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.web3.vo.Board_VO;
import global.sesoc.web3.vo.Member_VO;
import global.sesoc.web3.vo.Reply_VO;

public interface mapper {

	public void input(Member_VO vo);

	public Member_VO search(String doubleCheck);

	public ArrayList<Member_VO> searchAll();

	public int delete(String name);

	public int updating(Member_VO vo);

	public int boardWrite(Board_VO vo);

	public ArrayList<Board_VO> selectBoardList();

	public Board_VO boardSearch(String boardnum);

	public void boardHits(String boardnum);

	public int boardDelete(String boardnum);

	public void boardUpdate(Board_VO vo);

	public void addReply(Reply_VO vo);

	public ArrayList<Reply_VO> replySearch(String boardnum);

	public ArrayList<Board_VO> selectBoardList2(RowBounds RB);
}
