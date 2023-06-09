<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/inc/header.jsp" %>


	<h1>범준쌤 코딩 스쿨</h1>
	<p>Context Path : <%=request.getContextPath() %></p>
	<ul>
		<li>게시판</li>
		<li><a href="<%=request.getContextPath() %>/jsp/saram/list.jsp">사람목록</a></li>
	</ul>

<!-- 개발자는 스스로 연구하고 공부하는 사람 -->
<%@ include file="/inc/tail.jsp" %>