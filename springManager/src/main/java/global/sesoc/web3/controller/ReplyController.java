package global.sesoc.web3.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import global.sesoc.web3.dao.dao;
import global.sesoc.web3.vo.Reply_VO;

@Controller @RequestMapping("reply")
public class ReplyController {

	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);
	@Autowired
	dao dao;
	
	@PostMapping(value = "addReply")
	public String addReply(String boardnum, String replyId, String text) {
		
		Reply_VO vo = new Reply_VO(boardnum, replyId, text);
		dao.addReply(vo);
		return "";
	}
	
}
