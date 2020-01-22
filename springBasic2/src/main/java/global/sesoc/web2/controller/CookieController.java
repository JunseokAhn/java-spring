package global.sesoc.web2.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CookieController {

	private static final Logger logger = LoggerFactory.getLogger(CookieController.class);

	@RequestMapping(value = "/cookie1", method = RequestMethod.GET)
	public String goCookie1(HttpServletResponse res) {
		// 쿠키객체생성
		Cookie c1 = new Cookie("name", "abc");
		Cookie c2 = new Cookie("age", "12");

		// response객체를통해 내보내기
		res.addCookie(c1);
		res.addCookie(c2);
		logger.debug("생성");
		return "redirect:/";
	}

	@RequestMapping(value = "/cookie2", method = RequestMethod.GET)
	public String goCookie2(HttpServletResponse res) {
		// 같은이름의 쿠키생성
		Cookie c1 = new Cookie("name", "111");
		Cookie c2 = new Cookie("age", "111");

		// 만료기한 0초로 지정
		c1.setMaxAge(0);
		c2.setMaxAge(0);

		// response객체를통해 내보내기
		res.addCookie(c1);
		res.addCookie(c2);
		logger.debug("삭제");

		return "redirect:/";
	}

	@RequestMapping(value = "/cookie3", method = RequestMethod.GET)
	public String goCookie3(HttpServletRequest req) {
		Cookie cks[] = req.getCookies();
		for (Cookie i : cks) {
			logger.debug(i.getName() + "," + i.getValue());
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/cookie4", method = RequestMethod.GET)
	public String goCookie4(@CookieValue(name= "name", defaultValue = "없음") String name,
			@CookieValue(name= "age", defaultValue = "0") int age) {

		logger.info("name {}, age {}", name, age);

		return "redirect:/";
	}

}
