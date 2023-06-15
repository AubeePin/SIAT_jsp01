<%@page import="org.mingyeong.model.SaramDAO"%>
<%@page import="org.mingyeong.model.SaramDTO"%>
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
	SaramDTO saram = null;

	if (request.getParameter("seq") != null) {
		int seq = Integer.parseInt(request.getParameter("seq"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String job = request.getParameter("job");
		String addr = request.getParameter("addr");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		saram = new SaramDTO(seq, name, age, job, addr, email, phone);

		dao.update(saram);
	}

	response.sendRedirect("list.jsp");
	%>
	
</body>
</html>