package org.comstudy.myweb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// FrontController 역할
public class DispatcherServlet extends HttpServlet {
	HandlerMapping handlerMapping = new HandlerMapping();
	Controller ctrl;
	ModelAndView mav;
	ViewResolver viewResolver;
	
	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		String path = "/blog";
		
		ctrl = handlerMapping.getController(path);
		mav = ctrl.execute(req, resp);
		viewResolver.action(mav); // forward 또는 redirect 해줌.
		
		System.out.println("process() - DispatcherServlet");
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
		process(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
}
