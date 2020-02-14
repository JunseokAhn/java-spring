package global.sesoc.web3.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.web3.util.PageNavigator;
import global.sesoc.web3.vo.Board_VO;
import global.sesoc.web3.vo.Member_VO;
import global.sesoc.web3.vo.Reply_VO;

@Repository
public class dao {

	@Autowired
	private SqlSession session;

	public Member_VO input(Member_VO vo) {
		// TODO Auto-generated method stub

		mapper mapper = session.getMapper(mapper.class);

		mapper.input(vo);

		return vo;
	}

	public ArrayList<Member_VO> searchAll() {
		// TODO Auto-generated method stub

		mapper mapper = session.getMapper(mapper.class);
		ArrayList<Member_VO> list = mapper.searchAll();

		return list;
	}

	public boolean delete(String name) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		int res = mapper.delete(name);

		return res > 0;
	}

	public Member_VO search(String doubleCheck) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		Member_VO vo = mapper.search(doubleCheck);
		return vo;
	}

	public boolean updating(Member_VO vo) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		int res = mapper.updating(vo);
		return res > 0;
	}

	public boolean boardWrite(Board_VO vo) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);

		int res = mapper.boardWrite(vo);
		return res > 0;
	}

	public int selectBoardListSize(String searchText) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		int listSize = mapper.selectBoardListSize(searchText);
		return listSize;
	}

	public Board_VO boardSearch(String boardnum, String replyCheck) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		if (replyCheck.equals("on")) {
			mapper.boardHits(boardnum);
		}

		Board_VO vo = mapper.boardSearch(boardnum);
		return vo;
	}

	public Board_VO boardSearch(String boardnum) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		mapper.boardHits(boardnum);
		Board_VO vo = mapper.boardSearch(boardnum);
		return vo;
	}

	public boolean boardDelete(String boardnum) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		int res = mapper.boardDelete(boardnum);
		return res > 0;
	}

	public boolean boardUpdate(Board_VO vo) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		mapper.boardUpdate(vo);
		return true;
	}

	public void addReply(Reply_VO vo) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		mapper.addReply(vo);
	}

	public ArrayList<Reply_VO> replySearch(String boardnum) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		ArrayList<Reply_VO> replyList = mapper.replySearch(boardnum);
		return replyList;
	}

	public ArrayList<Board_VO> selectBoardList2(String searchText, int startRecord, int countPerPage) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);

		RowBounds RB = new RowBounds(startRecord, countPerPage);

		ArrayList<Board_VO> boardList = mapper.selectBoardList2(searchText, RB);

		return boardList;
	}

	public void deleteReply(String replynum) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		mapper.deleteReply(replynum);
	
	}

	public void replyUpdate(String replynum, String updatedText) {
		// TODO Auto-generated method stub
		mapper mapper = session.getMapper(mapper.class);
		HashMap <String, String> map = new HashMap<>();
		map.put("replynum",replynum);
		map.put("updatedText", updatedText);
		mapper.replyUpdate(map);
		
	}

}
