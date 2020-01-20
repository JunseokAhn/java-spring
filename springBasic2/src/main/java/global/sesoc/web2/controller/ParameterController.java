package global.sesoc.web2.controller;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web2.vo.Person;

@Controller
public class ParameterController {
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(ParameterController.class);

	@RequestMapping(value = "/param1", method = RequestMethod.GET)
	public String goParam1() {

		return "param/param1Form";
	}

	@RequestMapping(value = "/param1", method = RequestMethod.POST)
	public String goParam1(String name, int age, String address) {
//		System.out.println("이름: " + name);
//		System.out.println("나이: " + age);
//		System.out.println("주소: " + address);

		logger.debug("이름" + name);

		return "param/param1Form";
	}

	@RequestMapping(value = "/param2", method = RequestMethod.GET)
	public String goParam2() {

		return "param/param2Form";
	}

	@RequestMapping(value = "/param2", method = RequestMethod.POST)
	public String goParam2(Person p) {
//		System.out.println("이름: " + name);
//		System.out.println("나이: " + age);
//		System.out.println("주소: " + address);

		logger.debug("전달된VO : " + p);
		return "redirect:/";
	}

	@RequestMapping(value = "/param3", method = RequestMethod.GET)
	public String goParam3(String num, String num2) {
		logger.debug(num);
		logger.debug(num2);
		return "redirect:/";
	}

}
