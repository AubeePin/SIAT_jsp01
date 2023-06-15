<%@page import="org.mybatis.example.model.Blog"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>블로그 상세 페이지</h1>
<%
Blog blog = (Blog)request.getAttribute("blog");
out.println(blog);
%>

<a href="modify.do?id=<%=blog.getId()%>">수정</a>
<a href="delete.do?id=<%=blog.getId()%>">삭제</a>
<a href="list.do">목록</a>
</body>
</html>