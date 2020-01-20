package global.sesoc.web2.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.web2.vo.Person;

@Controller
public class JstlController {

	@RequestMapping(value = "/jstl1", method = RequestMethod.GET)
	public String GoJstl(Model M) {
		String str = "문자열";
		int num = 100;
		ArrayList<String> slist = new ArrayList<>();
		slist.add("aaa");
		slist.add("bbb");
		String tag = "<marquee>marquee태그 문자열</marquee>";
		M.addAttribute("str", str);
		M.addAttribute("num", num);
		M.addAttribute("slist", slist);
		M.addAttribute("tag", tag);

		return "jstlTest";
	}

	@RequestMapping(value = "/jstl2", method = RequestMethod.GET)
	public String Gojstl2(Model M) {
		String st = "a";
		int in = 1;
		boolean bo = true;
		Double dou = 12.12d;
		float fl = 10.3f;
		byte byt = 6;
		long lo = 123124124;
		Object ob = "object";
		ArrayList<Object> oblist = new ArrayList<>();
		oblist.add(1);
		oblist.add("2");
		oblist.add(null);
		ArrayList<Integer> inlist = new ArrayList<>();
		inlist.add(1);
		inlist.add(null);
		String [] arr = new String [3];
		arr[0]="1";
		arr[1]="2";
		arr[2]="3";
		M.addAttribute("st", st);
		M.addAttribute("in", in);
		M.addAttribute("bo", bo);
		M.addAttribute("dou", dou);
		M.addAttribute("byt", byt);
		M.addAttribute("lo", lo);
		M.addAttribute("ob", ob);
		M.addAttribute("oblist", oblist);
		M.addAttribute("inlist", inlist);
		M.addAttribute("arr", arr);
		return "jstl2Test";
	}
	@RequestMapping(value = "/jstl3", method = RequestMethod.GET)
	public String jstl3(Model model) {
		Person person = new Person();
		person.setName("홍길동");
		person.setAddress("서울");
		person.setAge(20);
		
		ArrayList<Person> list = new ArrayList<Person>();
		Person p = new Person();
		p.setName("김철수");
		p.setAddress("부산");
		p.setAge(30);
		list.add(p);
		p = new Person();
		p.setName("이철수");
		p.setAddress("광주");
		p.setAge(40);
		list.add(p);
		model.addAttribute("person", person);
		model.addAttribute("list", list);
		
		return "jstl3Test";
	}
}
