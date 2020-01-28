package global.sesoc.web3.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web3.dao.dao;
import global.sesoc.web3.vo.VO;

@Controller
public class inputController {

	private static final Logger logger = LoggerFactory.getLogger(inputController.class);

	@Autowired
	private dao dao;

	@RequestMapping(value = "/input", method = RequestMethod.GET)
	public String goInput() {

		return "input";
	}

	@RequestMapping(value = "/input2", method = RequestMethod.POST)
	public String goInput2(String name, int age, String address) {

		logger.debug("이름 {} 나이 {} 주소 {}", name, age, address);

		dao.input(name, age, address);
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "login";
	}

	@RequestMapping(value = "/login2", method = RequestMethod.POST)
	public String login2(String name, int age, String address) {

		logger.debug("이름 {} 나이 {} 주소 {}", name, age, address);
		VO vo = new VO(name, age, address);
		/*
		 * VO vo = new VO(); vo.setAge(age); vo.setAddress(address); vo.setName(name);
		 */
		VO vo2 = dao.search(vo);
		System.out.println(vo2);
		/*
		 * if (vo.equals(vo2)) System.out.println("로그인성공");
		 */
		System.out.println("로그인실패");
		return "redirect:/";
	}
}
