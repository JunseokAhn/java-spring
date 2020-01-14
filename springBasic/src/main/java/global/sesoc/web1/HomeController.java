package global.sesoc.web1;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		return "home";
	}

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String goJoinForm() {
		return "joinForm";
	}

	@RequestMapping(value = "/join2", method = RequestMethod.POST)
	public String goJoinForm2(String userID, String userPW, String userName) {
		System.out.println("사용자가 가입폼에서 입력한 값은");
		System.out.println("userID : " + userID);
		System.out.println("userPW : " + userPW);
		System.out.println("userName : " + userName);
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		return "loginForm";
	}

	@RequestMapping(value = "/login2", method = RequestMethod.POST)
	public String loginForm2(String userID, String userPW) {
		System.out.println("사용자가 가입폼에서 입력한 값은");
		System.out.println("userID : " + userID);
		System.out.println("userPW : " + userPW);
		return "redirect:/";
	}
}
