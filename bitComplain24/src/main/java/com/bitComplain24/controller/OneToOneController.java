package com.bitComplain24.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bitComplain24.service.OneToOneService;
import com.bitComplain24.vo.OneToOneVo;

@Controller
@RequestMapping("/oneToOne")
public class OneToOneController {
	
	@Autowired
	private OneToOneService oneToOneService;
	
	@RequestMapping("")
	public String index(Model model) {
		int page = 1;
		List<OneToOneVo> list = oneToOneService.findAll(page);
		model.addAttribute("list", list);
		model.addAttribute("p", page);
		
		return "oneToOne/index";
	}
	
	@RequestMapping(value="/{page}")
	public String index(@PathVariable("page") int page, Model model) {
		List<OneToOneVo> list = oneToOneService.findAll(page);
		model.addAttribute("list", list);
		model.addAttribute("p", page);
		
		return "oneToOne/index";
	}
	
	@RequestMapping("/writeForm")
	public String writeForm() {
		
		
		return "oneToOne/write";
	}
	
	@RequestMapping("/write")
	public String write() {
		
		
		return "redirect:/oneToOne/";
	}
	
	@RequestMapping(value="/detail/{title}/{regdate}")
	public String detail() {
		return "oneToOne/detail";
	}
	
	
	@RequestMapping("/modify")
	public String modify() {
		
		return "oneToOne/modify";
	}
	

	@RequestMapping("/search")
	public String search(@RequestParam(defaultValue="title") String searchOption, 
							@RequestParam(defaultValue="") String keyword, 
								Model model) {
		int page = 1;
		List<OneToOneVo> list = oneToOneService.search(searchOption, keyword, page);
		System.out.println(list);
		model.addAttribute("list", list);
		model.addAttribute("p", page);
		
		return "oneToOne/search";
	}
	
	@RequestMapping(value="/search/{page}")
	public String search(@RequestParam(defaultValue="title") String searchOption, 
							@RequestParam(defaultValue="") String keyword, 
							@PathVariable("page") int page, Model model) {
		List<OneToOneVo> list = oneToOneService.search(searchOption, keyword, page);
		model.addAttribute("list", list);
		model.addAttribute("p", page);
		
		return "oneToOne/search";
	}
}
