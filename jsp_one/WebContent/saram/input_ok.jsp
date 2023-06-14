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
request.setCharacterEncoding("UTF-8");

SaramDAO dao = new SaramDAO();
String name = request.getParameter("name");
String age = request.getParameter("age");
String job = request.getParameter("job");
String addr = request.getParameter("addr");
String email = request.getParameter("email");
String phone = request.getParameter("phone");


dao.insert(new SaramDTO(0,name, 0, job, addr, email, phone));

response.sendRedirect("list.jsp");
%>

<p>name : <%=name %></p>
<p>age : <%=age %></p>
<p>job : <%=job %></p>
<p>addr : <%=addr %></p>
<p>email : <%=email %></p>
<p>phone : <%=phone %></p>
</body>
</html>