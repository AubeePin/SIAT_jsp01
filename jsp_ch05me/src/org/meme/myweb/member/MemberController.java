package org.meme.myweb.member;

import javax.servlet.http.HttpServletRequest;

import org.meme.myweb.controller.Controller;
import org.meme.myweb.controller.ModelAndView;

public class MemberController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest req) {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("member/login");
		modelAndView.addObject("message", "Member page");
		
		return modelAndView;
	}

}
