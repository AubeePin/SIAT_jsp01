<%@page import="org.mybatis.member.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>멤버 상세 페이지</h1>
<%
Member member =(Member)request.getAttribute("blog");
out.println(member);
%>

<a href="modify.do?id=<%=member.getId() %>">수정</a>
<a href="delete.do?id=<%=member.getId() %>">삭제</a>
<a href="list.do">목록</a>

</body>
</html>