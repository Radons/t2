package com.mvcsecurityjpa.t2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvcsecurityjpa.t2.model.User;
import com.mvcsecurityjpa.t2.service.UserService;


@Controller
@RequestMapping("admin/")
public class Admin {
	@Autowired
	private UserService userService;
	@RequestMapping("save")
	public String save() {
		User user=new User();
		user.setUserName("ada");
		user.setUserPwd("ada");
		userService.save(user);
		return "home";
	}
	@RequestMapping(value= {"allAdminsByPage"})
	public String findAll(Model model) {
		
		model.addAttribute("userList",userService.findAll());
		return "/admin/allAdmins";
	}

}
