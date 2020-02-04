package global.sesoc.web3.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web3.dao.dao;
import global.sesoc.web3.vo.Member_VO;

@Controller
@RequestMapping("member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private dao dao;

	@RequestMapping(value = "/input", method = RequestMethod.GET)
	public String goInput() {

		return "member/input";
	}

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

	@RequestMapping(value = "/input", method = RequestMethod.POST)
	public String goInput2(String id, String password, String name, String phone, String address, String email) {

		logger.debug("아이디 {} 비번 {}이름 {} 폰 {} 주소 {} 메일{}", id, password, name, phone, address, email);
		Member_VO vo = new Member_VO(id, password, name, phone, address, email);
		dao.input(vo);
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "member/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login2(HttpSession session, String id, String password) {

		logger.debug("아이디 {} 비번 {}", id, password);
		Member_VO vo = dao.search(id);
		
		if ((vo != null) && (vo.getPassword().equals(password))) {
			session.setAttribute("id", vo.getId());
			session.setAttribute("password", vo.getPassword());
			session.setAttribute("name", vo.getName());
			session.setAttribute("phone", vo.getPhone());
			session.setAttribute("address", vo.getAddress());
			session.setAttribute("email", vo.getAddress());
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping(value = "doubleCheck", method = RequestMethod.GET)
	public String doubleCheck() {

		return "member/doubleCheck";
	}

	@RequestMapping(value = "doubleCheck", method = RequestMethod.POST)
	public String doubleCheck2(Model model, String doubleCheck) {

		Member_VO vo = dao.search(doubleCheck);
		if (vo == null) {
			model.addAttribute("result", "null");
			model.addAttribute("id", doubleCheck);
		} else {
			model.addAttribute("result", "exist");
			model.addAttribute("id", doubleCheck);
		}

		return "member/doubleCheck";
	}
}
