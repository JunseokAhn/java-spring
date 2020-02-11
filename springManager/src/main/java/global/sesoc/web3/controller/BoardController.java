package global.sesoc.web3.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import global.sesoc.web3.dao.dao;
import global.sesoc.web3.util.FileService;
import global.sesoc.web3.vo.Board_VO;
import global.sesoc.web3.vo.Reply_VO;

@Controller
@RequestMapping("board")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	final String uploadPath = "/boardfile";

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
	public String boardWrite2(String title, String contents, HttpSession session, Model model, MultipartFile upload) {
		String id = (String) session.getAttribute("id");
		Board_VO vo = new Board_VO();

		if (upload != null) {
			logger.debug("제목 :{}, name :{}, size :{},  :contentType {}", title, upload.getName(), upload.getSize(),
					upload.getContentType());

			vo.setId(id);
			vo.setTitle(title);
			vo.setContents(contents);
			String savedfile = FileService.saveFile(upload, uploadPath);
			vo.setOriginalfile(upload.getOriginalFilename());
			vo.setSavedfile(savedfile);
			dao.boardWrite(vo);

			return "redirect:/board/boardList";
		}

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
		ArrayList<Reply_VO> replyList = dao.replySearch(boardnum);
		model.addAttribute("reply", replyList);
		return "board/boardSearch";
	}

	@GetMapping(value = "boardDelete")
	public String boardDelete(String boardnum, String id, HttpSession session) {

		String realId = (String) session.getAttribute("id");
		if (id.equals(realId)) {
			logger.debug("아이디 확인");
			boolean res = dao.boardDelete(boardnum);

		}

		return "redirect:/board/boardList";
	}

	@GetMapping(value = "boardUpdate")
	public String boardUpdate(String boardnum, String id, HttpSession session, Model model) {
		String realId = (String) session.getAttribute("id");
		if (realId.equals(id)) {
			logger.debug("아이디 확인");
			Board_VO vo = dao.boardSearch(boardnum);
			model.addAttribute("vo", vo);
		}

		return "board/boardUpdate";
	}

	@PostMapping(value = "boardUpdate")
	public String boardUpdate2(HttpSession session, Board_VO vo, Model model) {
		String realId = (String) session.getAttribute("id");

		if (realId.equals(vo.getId())) {
			logger.debug("아이디 확인");
			dao.boardUpdate(vo);
		}

		return "redirect:/board/boardList";
	}

	@RequestMapping(value = "download", method = RequestMethod.GET)
	public String fileDownload(String boardnum, HttpServletResponse response) {
		Board_VO board = dao.boardSearch(boardnum);

		// 원래의 파일명
		String originalfile = new String(board.getOriginalfile());
		try {
			response.setHeader("Content-Disposition",
					" attachment;filename=" + URLEncoder.encode(originalfile, "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		// 저장된 파일 경로
		String fullPath = uploadPath + "/" + board.getSavedfile();

		// 서버의 파일을 읽을 입력 스트림과 클라이언트에게 전달할 출력스트림
		FileInputStream filein = null;
		ServletOutputStream fileout = null;

		try {
			filein = new FileInputStream(fullPath);
			fileout = response.getOutputStream();

			// Spring의 파일 관련 유틸
			FileCopyUtils.copy(filein, fileout);

			filein.close();
			fileout.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}
}
