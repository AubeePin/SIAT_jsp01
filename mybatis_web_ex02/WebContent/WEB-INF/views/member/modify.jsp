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
<%
Member blog = (Member)request.getAttribute("blog");
%>
<h1>수정 페이지</h1>
<form action="" method="POST">
<table>
   <tr>
      <th>ID</th><td><%=blog.getId()%><input type="hidden" name="id" value="<%=blog.getId()%>"/></td>
   </tr>
   <tr>
      <th>NAME</th><td><input type="text" name="name" value="<%=blog.getName()%>"/></td>
   </tr>
   <tr>
      <th>EMAIL</th><td><input type="text" name="email" value="<%=blog.getEmail()%>"/></td>
   </tr>
   <tr>
      <th>PHONE</th><td><input type="text" name="phone" value="<%=blog.getPhone()%>"/></td>
   </tr>
   <tr>
      <th colspan="2"><input type="submit" value="SAVE"/></th>
   </tr>
</table>
</form>

</body>
</html>