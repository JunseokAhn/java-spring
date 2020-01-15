package global.sesoc.web1.controler;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ParamController {

	@RequestMapping(value = "/param1", method = RequestMethod.GET)
	public String param1() {

		return "jsp/param1";
	}
	
	@RequestMapping(value = "/param2", method = RequestMethod.POST)
	public String param2(String userID, String userPW, String gender) {
		System.out.println(userID + userPW+ gender);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/param3", method = RequestMethod.GET)
	public String param3(Model model) {
		String str = "서버에서 보내는 내용";
		int num = 12345;
		model.addAttribute("str", str);
		model.addAttribute("num", num);
		return "jsp/param3";
	}
}
