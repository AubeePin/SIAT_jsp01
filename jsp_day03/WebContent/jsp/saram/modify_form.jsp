<%@page import="org.comstudy.model.SaramDTO"%>
<%@page import="org.comstudy.model.SaramDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/inc/header.jsp"%>

<h1>수정 기능</h1>
<%
	int seq = Integer.parseInt(request.getParameter("seq"));

SaramDAO dao = new SaramDAO();
SaramDTO saram = dao.findBySeq(seq);
%>

seq :
<%=seq%><br />
Saram :
<%=saram%>
<br />
<hr />
<form action="modify_ok.jsp" method="post">
	<input type="hidden" name="seq" value="<%=seq%>" />
	<table>
		<tr>
			<th>SEQ</th>
			<td><%=saram.getSeq()%></td>
		</tr>
		<tr>
			<th>ID</th>
			<td><input name="id" /></td>
		</tr>
		<tr>
			<th>NAME</th>
			<td><input name="name" /></td>
		</tr>
		<tr>
			<th>EMAIL</th>
			<td><input name="email" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="저장" /></td>
		</tr>
	</table>

	<%@ include file="/inc/tail.jsp"%>