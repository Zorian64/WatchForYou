package org.zorian.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LinkController {

	@RequestMapping(value = "/")
	public ModelAndView mainPage() {
		return new ModelAndView("home");
	}

	@RequestMapping(value = "/index")
	public ModelAndView indexPage() {
		return new ModelAndView("home");
	}

	@RequestMapping(value = "/aboutus")
	public ModelAndView aboutusPage() {
		return new ModelAndView("aboutus");
	}

	@RequestMapping(value = "/contact-us", method = RequestMethod.GET)
	public String goToContactUs() {
		return "contact-us";
	}

	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView firstAdminPage() {
		return new ModelAndView("/admin/admin");
	}
}