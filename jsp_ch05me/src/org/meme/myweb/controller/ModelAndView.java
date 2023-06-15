package org.meme.myweb.controller;

import java.util.Hashtable;

public class ModelAndView {
	private Hashtable<String, Object> models = new Hashtable<String, Object>();
	private String viewName;
	
	public ModelAndView() {
		this("");
	}

	public ModelAndView(String viewName) {
		this.viewName = viewName;
	}
//---여기부터
	public void addObject(String key, Object value) {
		models.put(key, value);
	}
	private Object getObject(String key) {
		return models.get(key);
	}
	public String getViewName() {
		return viewName;
	}
//여기까지 ???????
	public void setViewName(String viewName) {
		this.viewName = viewName;
	}
	
}
