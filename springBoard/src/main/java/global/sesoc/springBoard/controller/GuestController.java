package global.sesoc.springBoard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.springBoard.dao.Dao;
import global.sesoc.springBoard.vo.VO;

@Controller
public class GuestController {

	private static final Logger logger = LoggerFactory.getLogger(GuestController.class);

	@Autowired
	private Dao dao;

	@RequestMapping(value = "/guestBook", method = RequestMethod.GET)
	public String guestBook() {

		return "guestBook";
	}

	@RequestMapping(value = "/writing", method = RequestMethod.GET)
	public String write() {

		return "writing";
	}

	@RequestMapping(value = "/writing", method = RequestMethod.POST)
	public String write2(String userName, String userPw, String contents) {
		logger.debug("유저네임 : {}, 비밀번호 : {}, 내용 : {}", userName, userPw, contents);

		VO vo = new VO(userName, userPw, contents);
		boolean res = dao.writing(vo);
		if(!res)
			System.out.println("여기");
		return "guestBook";
	}

}
