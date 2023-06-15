<%@page import="org.mybatis.member.model.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>멤버 목록</h1>
<table horder="1" width="100">
	<tr>
		<th>id</th>
		<th>name</th>
		<th>email</th>
		<th>phone</th>
	</tr>
<%
	List<Member> list =(List<Member>)request.getAttribute("list");
	for(int i=0; i<list.size(); i++) {
		Member member = list.get(i);
	
%>
	<tr>
		<td><%=i %></td>
		<td><%=member.getId()%></td>
		<td><a href="detail.do?id=<%=member.getName()%>"><%=member.getPhone()%></a></td>
		<td><%=member.getEmail()%></td>
	</tr>
<%
	}
%>
</table>
<a href="input.do">새글 입력</a>
</table>
</body>
</html>