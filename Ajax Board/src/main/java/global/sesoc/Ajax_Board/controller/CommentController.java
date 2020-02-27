package global.sesoc.Ajax_Board.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.Ajax_Board.dao.CommentDAO;
import global.sesoc.Ajax_Board.vo.Comment;

/**
 * AJAX Test - 댓글 작성/삭제
 */
@Controller
@RequestMapping("aj")
public class CommentController {

    private static final Logger logger = LoggerFactory.getLogger(CommentController.class);

    @Autowired
    CommentDAO dao;

    /**
     * JSP 페이지로 이동
     */
    @RequestMapping(value = "comment", method = RequestMethod.GET)
    public String comment() {
	return "aj/comment";
    }

    /**
     * 댓글 작성
     */
    @ResponseBody
    @RequestMapping(value = "insert", method = RequestMethod.POST)
    public void insert(Comment comment) {
	logger.info("전달된 객체 : {}", comment);
	dao.insert(comment);
    }

    /**
     * 목록 읽기
     */
    @ResponseBody
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public ArrayList<Comment> list() {
	ArrayList<Comment> commentList = dao.list();
	return commentList;
    }

    /**
     * 댓글 삭제
     */
    @ResponseBody
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    public String delete(int num) {
	logger.info("전달된 번호 : {}", num);
	
	int res = dao.delete(num);
	if (res == 1) {
	    return "삭제되었습니다.";
	} else {
	    return "삭제 실패했습니다.";
	}
    }

    @ResponseBody
    @RequestMapping(value = "mode", method = RequestMethod.POST)
    public String mode(Comment comment) {
	logger.debug("전달된 번호 : {}, 전달된 텍스트 : {}", comment.getNum(), comment.getText());
	
	int res = dao.mode(comment);
	if (res > 0)
	    return "성공";
	else {
	    return "실패";
	}
    }
}
