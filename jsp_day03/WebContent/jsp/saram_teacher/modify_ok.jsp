<%@page import="org.comstudy.model.SaramDTO"%>
<%@page import="org.comstudy.model.SaramDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
SaramDAO dao = new SaramDAO();
SaramDTO saram = null;

if(request.getParameter("seq") != null) {
   int seq = Integer.parseInt(request.getParameter("seq"));
   String id = request.getParameter("id"); 
   String name = request.getParameter("name"); 
   String email = request.getParameter("email"); 
   saram = new SaramDTO(seq, id, name, email);
   
   dao.update(saram);
}

response.sendRedirect("list.jsp");
%>