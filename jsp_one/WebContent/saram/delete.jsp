<%@page import="org.mingyeong.model.SaramDTO"%>
<%@page import="org.mingyeong.model.SaramDAO"%>
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
int seq = Integer.parseInt(request.getParameter("seq"));
SaramDAO dao = new SaramDAO();

dao.delete(new SaramDTO(seq));

response.sendRedirect("list.jsp");
%>
</body>
</html>