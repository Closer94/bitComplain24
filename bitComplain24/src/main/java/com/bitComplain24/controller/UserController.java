package com.bitComplain24.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bitComplain24.service.UserService;
import com.bitComplain24.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	
	@RequestMapping(value="createId", method=RequestMethod.GET)
	public String createIdPage() {
		
		return "user/createId";
	}
	
	@RequestMapping("/join")
	public String createId(UserVo vo) {
		userService.join(vo);
		
		return "redirect:/user/createIdSuccess";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginPage() {
		
		return "user/login";
	}	
	
	
	@RequestMapping("/createIdSuccess")
	public String createIdSuccess() {
		
		return "/user/createIdSuccess";
	}
	
	
}
