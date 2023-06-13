<%@page import="org.mingeyong.model.SaramDTO"%>
<%@page import="org.mingeyong.model.SaramDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// seq
// dao
// 삭제 후 redirect
int seq = Integer.parseInt(request.getParameter("seq"));
SaramDAO dao = new SaramDAO();

dao.delete(new SaramDTO(seq));

response.sendRedirect("list.jsp");
%>