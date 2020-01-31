package global.sesoc.web3.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import global.sesoc.web3.dao.dao;
import global.sesoc.web3.vo.VO;

@Controller
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private dao dao;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminMain() {

		return "admin";
	}

	@RequestMapping(value = "/searchAll", method = RequestMethod.GET)
	public String searchAll(Model model) {

		ArrayList<VO> list = dao.searchAll();
		model.addAttribute("list", list);

		return "search2";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(String name) {

		boolean res = dao.delete(name);
		return "redirect:/searchAll";

	}
}
