package global.sesoc.web3;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/*
	 * 만들고싶은기능 -로그인 회원가입 관리자메뉴-전체사용자조회 사용자삭제 공지 게시글삭제 댓글삭제 로그인후 개인정보조회, 변경, 회원탈퇴,
	 * 게시판(글쓰기, 글보기(댓글달기), 이미지첨부기능)
	 * 메인아이콘 - 누르면 메인
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {

		return "home";
	}

}
