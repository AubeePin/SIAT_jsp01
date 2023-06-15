package org.meme.myweb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet {
	HandlerMapping htrlMap = new HandlerMapping();
	ModelAndView mav;
	Controller ctrl;
	ViewResolver viewRe = new ViewResolver();

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//여기부터
		// path = requestUri - contextPath
		String reqUri = req.getRequestURI();
		String ctxPath = req.getContextPath();
		int beginIndex = ctxPath.length();
		String path = reqUri.substring(beginIndex);

		int endIndex = path.lastIndexOf("/");
		String dirPath = "/home";
		System.out.println("endIndex => " + endIndex);
		if (beginIndex < reqUri.lastIndexOf("/")) {
			dirPath = path.substring(0, endIndex);
		}
		String filePath = path.substring(dirPath.length());
		System.out.println("filePath => " + filePath);
		System.out.println("dirPath => " + dirPath);

		System.out.println("doProcess() - DispatcherServlet >> " + path);

		ctrl = htrlMap.getController(dirPath);
		mav = ctrl.execute(req);
		viewRe.action(mav, req, resp); // jsp 페이지로 forward 된다.
	}
	// 여기까지 몰러... 어려워....
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
}
