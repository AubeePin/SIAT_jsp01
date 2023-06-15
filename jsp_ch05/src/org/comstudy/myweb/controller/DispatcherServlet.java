package org.comstudy.myweb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet {
	HandlerMapping ctrlMap = new HandlerMapping();
	Controller ctrl;
	ModelAndView mav;
	ViewResolver viewRessolver = new ViewResolver();
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		String reqUri = req.getRequestURI();
		String ctxPath = req.getContextPath();
		int beginIndex = ctxPath.length();
		String path = reqUri.substring(beginIndex);
		
		int endIndex = path.lastIndexOf("/");
		String dirPath = "/home";
		if(beginIndex < reqUri.lastIndexOf("/")) {
			dirPath = path.substring(0, endIndex);
		}
		String filePath = path.substring(dirPath.length());
		req.setAttribute("filePath", filePath);
		req.setAttribute("dirPath", dirPath);
		
		ctrl = ctrlMap.getController(dirPath);
		mav = ctrl.execute(req);
		viewRessolver.action(mav, req, resp); // jsp 페이지로 forward 된다.
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
}
