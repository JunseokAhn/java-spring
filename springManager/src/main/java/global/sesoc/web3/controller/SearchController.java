package global.sesoc.web3.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web3.vo.Member_VO;

//<a href="delete?name=${p.name}">삭제
@Controller
public class SearchController {

	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(HttpSession session, Model model) {

		String id = (String) session.getAttribute("id");
		String password = (String) session.getAttribute("password");
		String name = (String) session.getAttribute("name");
		String phone = (String) session.getAttribute("phone");
		String address = (String) session.getAttribute("address");
		String email = (String) session.getAttribute("email");


		Member_VO vo = new Member_VO(id, password, name, phone, address, email);

		logger.debug(vo.toString());
		model.addAttribute("vo", vo);
		return "search2";
	}
}
