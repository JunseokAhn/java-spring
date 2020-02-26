package global.sesoc.jQuery.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.jQuery.dao.DAO;
import global.sesoc.jQuery.vo.VO;

@Controller
public class SampleController {

    private static final Logger logger = LoggerFactory.getLogger(SampleController.class);

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

    @RequestMapping(value = "showhide", method = RequestMethod.GET)
    public String goShow() {
	return "ajax/js/showHide";
    }

    @RequestMapping(value = "board", method = RequestMethod.GET)
    public String goBoard() {
	return "ajax/js/jqBoard";
    }

    @RequestMapping(value = "ajax1", method = RequestMethod.GET)
    public String ajax1() {
	return "ajax/js/ajax1";
    }

   
    @RequestMapping(value = "ajax2", method = RequestMethod.GET)
    public String ajax2() {
	logger.debug("ajax2");
	return "ajax/js/ajax2";
    }

    @ResponseBody
    @RequestMapping(value = "ajax2", method = RequestMethod.POST)
    public String ajax3(String str, String str2) {
	logger.debug("ajax2");
	String res = str+str2;
	return res;
    }
    
    @ResponseBody
    @RequestMapping(value = "ajax3",method = RequestMethod.POST)
    public String ajax4(String name, String age, String phone) {
	String res=name;
	logger.debug("이름 : {}, 나이 : {}, 폰 : {}",name,age,phone);
	
	return res;
    }
    
    @ResponseBody
    @PostMapping(value = "ajax4")
    public VO ajax5(VO vo) {
	logger.debug(vo.getAge());
	return vo;
    }
}
