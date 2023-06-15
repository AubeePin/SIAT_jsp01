package org.meme.myweb.home;

import javax.servlet.http.HttpServletRequest;

import org.meme.myweb.controller.Controller;
import org.meme.myweb.controller.ModelAndView;

public class HomeController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest req) {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("home");
		modelAndView.addObject("message", "Home page");
		
		return modelAndView;
	}

}
