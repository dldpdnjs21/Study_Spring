package com.ureca.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//@Component
@Controller
@RequestMapping("/employee")
public class UrecaController {

	@RequestMapping("/findAll")
	public String m1() {
	  return "hungry";
	}
	
}
