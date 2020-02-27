package global.sesoc.Ajax_Board.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.Ajax_Board.vo.Comment;

/**
 * DAO
 */
@Repository
public class CommentDAO {
	@Autowired
	SqlSession sqlSession;
	
	//작성
	public int insert(Comment comment) {
		CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
		
		int result = 0;
		try {
			result = mapper.insert(comment);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//목록 읽기
	public ArrayList<Comment> list() {
		CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
		ArrayList<Comment> commentList = null;
		try {
			commentList = mapper.list();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return commentList;
	}
	
	//삭제
	public int delete(int num) {
		CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
		
		int result = 0;
		try {
			result = mapper.delete(num);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int mode(Comment comment) {
	    // TODO Auto-generated method stub
	    CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);
	    int res = mapper.mode(comment);
	    return res;
	}
}
