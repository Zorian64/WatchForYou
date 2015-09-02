package org.zorian.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SecurityNavigation {
	
	@RequestMapping(value="/login-form", method=RequestMethod.GET)
	public ModelAndView loginForm() {
		return new ModelAndView("/login/login-form");
	}
		
	@RequestMapping(value="/login-error", method=RequestMethod.GET)
	public ModelAndView invalidLogin() {
		ModelAndView modelAndView = new ModelAndView("/login/login-form");
		modelAndView.addObject("error", true);
		return modelAndView;
	}
	
	@RequestMapping(value="/login-success", method=RequestMethod.GET)
	public ModelAndView successLogin() {
		return new ModelAndView("/login/login-success");
	}
	
	
}
