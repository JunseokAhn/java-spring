package global.sesoc.web3.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web3.dao.dao;
import global.sesoc.web3.vo.Board_VO;

@Controller
@RequestMapping("board")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	dao dao;

	@RequestMapping(value = "boardList", method = RequestMethod.GET)
	public String boardList(Model model) {
		ArrayList<Board_VO> list = dao.selectBoardList();
		for (Board_VO i : list) {
			System.out.println(i);
		}
		model.addAttribute("list", list);
		model.addAttribute("listSize", list.size());
		return "board/boardList";
	}

	@RequestMapping(value = "boardWrite", method = RequestMethod.GET)
	public String boardWrite() {

		return "board/boardWrite";
	}

	@RequestMapping(value = "boardWrite", method = RequestMethod.POST)
	public String boardWrite2(String title, String contents, HttpSession session, Model model) {
		String id = (String) session.getAttribute("id");
		Board_VO vo = new Board_VO();

		vo.setId(id);
		vo.setTitle(title);
		vo.setContents(contents);
		boolean res = dao.boardWrite(vo);

		return "redirect:/board/boardList";
	}

	@GetMapping(value = "boardSearch")
	public String boardSearch(String boardnum, Model model) {

		Board_VO vo = dao.boardSearch(boardnum);

		model.addAttribute("vo", vo);
		return "board/boardSearch";
	}

	@GetMapping(value = "boardDelete")
	public String boardDelete(String boardnum, String id, HttpSession session) {

		String realId =(String) session.getAttribute("id");
		if (id.equals(realId)) {
			logger.debug("아이디 확인");
			boolean res = dao.boardDelete(boardnum);

		}

		return "redirect:/board/boardList";
	}
}
