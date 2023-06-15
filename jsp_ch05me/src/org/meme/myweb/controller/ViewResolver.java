package org.meme.myweb.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewResolver {
	private String prefix = "/WEB-INF/views/";
	private String suffix = ".jsp";
	private String viewName;

	public void action(ModelAndView mav, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 여기부터
		viewName = mav.getViewName();
		if (viewName.indexOf("redirect:") == 0) {
			resp.sendRedirect(viewName);
		} else {
			String viewName = prefix + mav.getViewName() + suffix;
			RequestDispatcher view = req.getRequestDispatcher(viewName);
			view.forward(req, resp);
		}//여기까지 몰러...

	}
}
