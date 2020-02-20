package global.sesoc.jQueryManager.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.jQueryManager.dao.DAO;

@Controller
public class SampleController {

	private static final Logger logger = LoggerFactory.getLogger(Controller.class);

	@Autowired
	private DAO dao;

	@RequestMapping(value = "js1", method = RequestMethod.GET)
	public String goJS() {
		return "ajax/js/js1";
	}

	@RequestMapping(value = "js2", method = RequestMethod.GET)
	public String goJS2() {
		return "ajax/js/js2";
	}

	@RequestMapping(value = "jq1", method = RequestMethod.GET)
	public String goJQ1() {
		return "ajax/js/jq1";
	}

	@RequestMapping(value = "jq2", method = RequestMethod.GET)
	public String goJQ2() {
		return "ajax/js/jq2";
	}

	@RequestMapping(value = "jq3", method = RequestMethod.GET)
	public String goJQ3() {
		return "ajax/js/jq3";
	}
}
