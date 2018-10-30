package com.mvcsecurityjpa.t2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;




@Controller
public class PageController {
	//load service
//	@Autowired
//	private UserService userService;
	
	  @GetMapping(value= {"login"})
	    public String login(){
	        return "logon";
	    }
	  
	  @GetMapping(value= {"/","home"})
	    public String home(){
	        return "home";
	    }
}
