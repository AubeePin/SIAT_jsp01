package org.meme.myweb.blog;

import javax.servlet.http.HttpServletRequest;

import org.meme.myweb.controller.Controller;
import org.meme.myweb.controller.ModelAndView;

public class BlogController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest req) {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("blog/list");
		modelAndView.addObject("message", "Blog page");
		
		return modelAndView;
	}

}
