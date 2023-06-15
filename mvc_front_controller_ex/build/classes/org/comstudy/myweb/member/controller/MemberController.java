package org.comstudy.myweb.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.comstudy.myweb.controller.Controller;
import org.comstudy.myweb.controller.ModelAndView;

public class MemberController implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		return new ModelAndView("member/list");
	}

}
