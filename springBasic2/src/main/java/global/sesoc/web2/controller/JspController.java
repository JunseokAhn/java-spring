package global.sesoc.web2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JspController {
	
	@RequestMapping(value = "/jsp1", method = RequestMethod.GET)
	public String jspTest1() {
		
		return "jsp1Test";
	}
	
	@RequestMapping(value = "/jsp2", method = RequestMethod.GET)
	public String jspTest2() {
		
		return "jsp2Test";
	}
}
