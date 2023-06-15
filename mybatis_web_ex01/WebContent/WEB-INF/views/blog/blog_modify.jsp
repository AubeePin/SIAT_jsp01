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
<%
Blog blog = (Blog)request.getAttribute("blog");
%>
<h1>수정 페이지</h1>
<form action="" method="POST">
<table>
   <tr>
      <th>ID</th><td><%=blog.getId()%><input type="hidden" name="id" value="<%=blog.getId()%>"/></td>
   </tr>
   <tr>
      <th>AUTHOR</th><td><input type="text" name="author" value="<%=blog.getAuthor()%>"/></td>
   </tr>
   <tr>
      <th>TITLE</th><td><input type="text" name="title" value="<%=blog.getTitle()%>"/></td>
   </tr>
   <tr>
      <th>CONTENT</th><td><textarea type="text" name="content" rows="5">TEST10 content</textarea></td>
   </tr>
   <tr>
      <th colspan="2"><input type="submit" value="SAVE"/></th>
   </tr>
</table>
</form>

</body>
</html>