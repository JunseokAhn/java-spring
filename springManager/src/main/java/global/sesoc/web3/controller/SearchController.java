package global.sesoc.web3.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web3.vo.VO;
//<a href="delete?name=${p.name}">삭제
@Controller
public class SearchController {

	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(HttpSession session, Model model) {
		
		String name = (String) session.getAttribute("name");
		int age = (Integer) session.getAttribute("age");
		String address = (String) session.getAttribute("address");
		VO vo = new VO(name,age,address);
		
		logger.debug(vo.toString());
		model.addAttribute("vo", vo);
		return "search2";
	}
}
