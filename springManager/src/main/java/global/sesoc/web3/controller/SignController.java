package global.sesoc.web3.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import global.sesoc.web3.dao.dao;
import global.sesoc.web3.vo.VO;

@Controller
public class SignController {
	private static final Logger logger = LoggerFactory.getLogger(SignController.class);

	@Autowired
	private dao dao;

	@RequestMapping(value = "/input", method = RequestMethod.GET)
	public String goInput() {

		return "input";
	}

	@RequestMapping(value = "/input2", method = RequestMethod.POST)
	public String goInput2(String name, int age, String address) {

		logger.debug("이름 {} 나이 {} 주소 {}", name, age, address);
		VO vo = new VO(name, age, address);
		dao.input(vo);
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login2(HttpSession session, RedirectAttributes ra, String name, int age, String address) {

		logger.debug("이름 {} 나이 {} 주소 {}", name, age, address);
		VO vo = new VO(name, age, address);
		VO vo2 = dao.login(vo);
		if (vo.equals(vo2)) {
			ra.addAttribute("login", "로그인 성공");
			session.setAttribute("name", name);
			session.setAttribute("age", age);
			session.setAttribute("address", address);
		} else
			ra.addAttribute("login", "로그인 실패");

		return "redirect:/";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}
