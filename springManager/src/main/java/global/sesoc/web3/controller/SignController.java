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
import global.sesoc.web3.vo.Member_VO;

@Controller
public class SignController {
	private static final Logger logger = LoggerFactory.getLogger(SignController.class);

	@Autowired
	private dao dao;

	@RequestMapping(value = "/input", method = RequestMethod.GET)
	public String goInput() {

		return "input";
	}

	@RequestMapping(value = "/input", method = RequestMethod.POST)
	public String goInput2(String id, String password, String name, String phone, String address, String email) {

		logger.debug("아이디 {} 비번 {}이름 {} 폰 {} 주소 {} 메일{}", id, password, name, phone, address, email);
		Member_VO vo = new Member_VO(id, password, name, phone, address, email);
		dao.input(vo);
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login2(HttpSession session, RedirectAttributes ra, String id, String password, String name,
			String phone, String address, String email) {

		logger.debug("아이디 {} 비번 {}이름 {} 폰 {} 주소 {} 메일{}", id, password, name, phone, address, email);
		Member_VO vo = new Member_VO(id, password, name, phone, address, email);
		Member_VO vo2 = dao.login(vo);
		if (vo.equals(vo2)) {
			ra.addAttribute("login", "로그인 성공");
			session.setAttribute("id", id);
			session.setAttribute("password", password);
			session.setAttribute("name", name);
			session.setAttribute("phone", phone);
			session.setAttribute("address", address);
			session.setAttribute("email", email);
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
