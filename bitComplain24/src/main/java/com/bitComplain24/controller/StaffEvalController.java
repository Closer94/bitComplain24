package com.bitComplain24.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("staffEval")
public class StaffEvalController {
	
	
	@RequestMapping()
	public String index() {
		
		return "staffEval/index";
	}
	
	@RequestMapping("/evalForm")
	public String evalForm() {
		
		return "staffEval/evalForm";
	}
	
	@RequestMapping("eval")
	public String eval() {
		
		return "redirect:/staffEval";
	}
	@RequestMapping("detail")
	public String detail() {
		
		return "staffEval/detail";
	}
}
