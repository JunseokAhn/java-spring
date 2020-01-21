package global.sesoc.web2.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SessionController {

	private static final Logger logger = LoggerFactory.getLogger(SessionController.class);

	@RequestMapping(value = "/session1", method = RequestMethod.GET)
	public String goSession1(HttpSession session, Model model) {
		session.setAttribute("str", "세션에 저장된 문자열");
		session.setAttribute("num", 123);
		logger.info("세션에 값 저장됨");
		model.addAttribute("test", "테스트 문자열");
		// 세션은 남아있지만 모델은 리퀘스트라서 redirect이후 없어짐
		return "redirect:/";
	}

	@RequestMapping(value = "/session2", method = RequestMethod.GET)
	public String goSession2(HttpSession session) {
		session.removeAttribute("str");
		return "redirect:/";
	}

	@RequestMapping(value = "/session3", method = RequestMethod.GET)
	public String goSession3() {

		return "session/session1";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String goLogin() {

		return "session/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String goLogin2(HttpSession session, String userId, String userPw) {

		if (userId.equals("abc") && userPw.equals("123")) {
			session.setAttribute("userId", userId);
			session.setAttribute("userPw", userPw);
			logger.info("세션에 로그인값 저장됨");
			logger.debug("id:{}, password:{}", userId, userPw);
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String goLogout(HttpSession session) {

		session.removeAttribute("userId");
		session.removeAttribute("userPw");
//		session.invalidate(); 세션정보 allclear
		logger.info("로그아웃");
		return "redirect:/";
	}
}
