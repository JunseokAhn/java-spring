package global.sesoc.web2.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JstlController {

	@RequestMapping(value = "/jstl1", method = RequestMethod.GET)
	public String GoJstl(Model M) {
		String str = "문자열";
		int num=100;
		ArrayList<String> slist = new ArrayList<>();
		slist.add("aaa");
		slist.add("bbb");
		M.addAttribute("str", str);
		M.addAttribute("num", num);
		M.addAttribute("slist", slist);
		
		return "jstlTest";
	}
}
