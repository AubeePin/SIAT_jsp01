package org.comstudy.myweb.controller;

public class ViewResolver {
	String viewName;
	
	public void action(ModelAndView mav) {
		viewName = mav.getViewName();
		
		System.out.println("viewName => " + viewName);
	}
	
}
