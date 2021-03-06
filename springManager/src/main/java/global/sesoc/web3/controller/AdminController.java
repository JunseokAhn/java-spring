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
import global.sesoc.web3.vo.Member_VO;


@Controller @RequestMapping(value = "admin")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private dao dao;

	@RequestMapping(value = "/adminMain", method = RequestMethod.GET)
	public String adminMain() {

		return "admin/adminMain";
	}

	@RequestMapping(value = "/searchAll", method = RequestMethod.GET)
	public String searchAll(Model model) {

		ArrayList<Member_VO> list = dao.searchAll();
		model.addAttribute("list", list);

		return "admin/search2";
	}

	@RequestMapping(value = "/deleting", method = RequestMethod.GET)
	public String delete(String name) {

		boolean res = dao.delete(name);
		return "redirect:/admin/searchAll";

	}
}
