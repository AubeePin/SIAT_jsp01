<%@page import="org.mybatis.example.model.Blog"%>
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

<h1>블로그 목록</h1>
<table border="1" width="100%">
	<tr>
		<th>번호</th>
		<th>id</th>
		<th>title</th>
		<th>author</th>
	</tr>
<%
	List<Blog> list = (List<Blog>)request.getAttribute("list");
	for(int i=0; i<list.size(); i++) {
		Blog blog = list.get(i);
%>
	<tr>
		<td><%=i %></td>
		<td><%=blog.getId()%></td>
		<td><a href="detail.do?id=<%=blog.getId()%>"><%=blog.getTitle()%></a></td>
		<td><%=blog.getAuthor()%></td>
	</tr>
<%
	}
%>
</table>
<a href="input.do">새글 입력</a>

</body>
</html>