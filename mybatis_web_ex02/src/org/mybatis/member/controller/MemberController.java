package org.mybatis.member.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.member.model.Member;
import org.mybatis.member.model.MemberDAO;

public class MemberController extends HttpServlet{
	MemberDAO dao = new MemberDAO();
	
	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		String ctxPath = req.getContextPath();
	      String reqUri = req.getRequestURI();
	      int beginIndex  = ctxPath.length();
	      String path = reqUri.substring(beginIndex);
	      
	      System.out.println("process() - BlogController >> " + path);
	      
	      String viewName = "/WEB-INF/views/member/list.jsp";
	}
}
