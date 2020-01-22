package global.sesoc.sample.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.sample.dao.PersonDAO;
import global.sesoc.sample.vo.Person;

/**
 * 사용자 입력을 받아 처리
 */
@Controller
public class InputController {
	
	private static final Logger logger = LoggerFactory.getLogger(InputController.class);

	@Autowired
	private PersonDAO dao;

	/**
	 * 입력 폼으로 이동
	 * @return
	 */
	@RequestMapping(value = "/inputForm", method = RequestMethod.GET)
	public String goInputForm() {
		logger.info("입력 폼으로 이동");
		return "inputForm";
	}
	
	@RequestMapping(value="input", method = RequestMethod.POST)
	public String input(Person person) {
		logger.debug("폼으로부터 전달된 정보 : {}", person.toString());
		dao.insertPerson(person);
		return "redirect:/";
	}
}
