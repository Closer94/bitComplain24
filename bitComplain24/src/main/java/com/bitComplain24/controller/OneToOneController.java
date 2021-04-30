package com.bitComplain24.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitComplain24.service.OneToOneService;
import com.bitComplain24.vo.OneToOneVo;

@Controller
@RequestMapping("/oneToOne")
public class OneToOneController {
	
	@Autowired
	private OneToOneService oneToOneService;
	
	@RequestMapping("")
	public String index(Model model) {
		List<OneToOneVo> list = oneToOneService.findAll();
		model.addAttribute("list", list);
		
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
	
	@RequestMapping("/detail")
	public String detail() {
		return "oneToOne/detail";
	}
	
	@RequestMapping("/modify")
	public String modify() {
		
		return "oneToOne/modify";
	}
}
