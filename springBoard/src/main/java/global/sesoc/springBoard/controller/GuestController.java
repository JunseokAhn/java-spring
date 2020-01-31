package global.sesoc.springBoard.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String guestBook(Model model) {
		ArrayList<VO> list = dao.reading();
		model.addAttribute("list", list);

		return "guestBook";
	}

	@RequestMapping(value = "/writing", method = RequestMethod.GET)
	public String write() {

		return "writing";
	}

	@RequestMapping(value = "/writing", method = RequestMethod.POST)
	public String write2(String name, String password, String contents) {
		logger.debug("유저네임 : {}, 비밀번호 : {}, 내용 : {}", name, password, contents);

		VO vo = new VO(name, password, contents);
		boolean res = dao.writing(vo);

		return "redirect:/guestBook";
	}

	@RequestMapping(value = "/deleting", method = RequestMethod.GET)
	public String delete(String num, String password) {

		dao.deleting(num, password);
		return "redirect:/guestBook";
	}
	@RequestMapping(value = "/deleting", method = RequestMethod.POST)
	public String delete2(String num, String password) {

		dao.deleting(num, password);
		return "redirect:/guestBook";
	}
}
