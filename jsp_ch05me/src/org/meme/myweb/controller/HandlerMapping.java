package org.meme.myweb.controller;

import java.util.HashMap;

import org.meme.myweb.blog.BlogController;
import org.meme.myweb.home.HomeController;
import org.meme.myweb.member.MemberController;

public class HandlerMapping {
	HashMap<String, Controller> map = new HashMap<String, Controller>();
	
	public HandlerMapping() {
		map.put("/home", new HomeController());
		map.put("/member", new MemberController());
		map.put("/blog", new BlogController());
	}


	public Controller getController(String path) {
		return map.get(path);
	}
}
