package global.sesoc.web3.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import global.sesoc.web3.dao.dao;
import global.sesoc.web3.vo.Reply_VO;
import lombok.val;

@Controller
@RequestMapping("reply")
public class ReplyController {

	private static final Logger logger = LoggerFactory.getLogger(ReplyController.class);
	@Autowired
	dao dao;

	@PostMapping(value = "addReply")
	public String addReply(String boardnum, String replyId, String text) {

		Reply_VO vo = new Reply_VO(boardnum, replyId, text);
		dao.addReply(vo);
		return "redirect:/board/boardSearch?boardnum=" + boardnum;
	}

	@GetMapping(value = "replyUpdate")
	public String replyUpdate(String replynum, String id, String boardnum, HttpSession session,
			@RequestParam(value = "updateCheck", defaultValue = "off") String updateCheck) {
		String realId = (String) session.getAttribute("id");
		if (realId.equals(id)) {
			
			return "redirect:/board/boardSearch?boardnum=" + boardnum + "updateCheck=" + updateCheck;
		} else {
			System.out.println("아이디가 다릅니다.");
			return "redirect:/board/boardSearch?boardnum=" + boardnum;
		}
	}

	@PostMapping(value = "replyUpdate")
	public String replyUpdate2(String replynum, String id, String boardnum, String updatedText, HttpSession session,
			@RequestParam(value = "updateCheck", defaultValue = "off") String updateCheck) {

		return "";
	}

	@GetMapping(value = "deleteReply")
	public String deleteReply(String replynum, String id, String boardnum, HttpSession session) {
		String realId = (String) session.getAttribute("id");
		if (realId.equals(id))
			dao.deleteReply(replynum);
		else
			System.out.println("아이디가 다릅니다.");
		return "redirect:/board/boardSearch?boardnum=" + boardnum;
	}
}
