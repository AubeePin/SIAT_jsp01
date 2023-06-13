<<<<<<< HEAD
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
	<h1>회원 상세보기</h1>
	<%
	int seq = Integer.parseInt(request.getParameter("seq"));
	
	SaramDAO dao = new SaramDAO();
	SaramDTO saram = dao.findBySeq(seq);
	%>
	<hr/>
	<table>
		<tr>
			<th>SEQ</th><td><%=saram.getSeq() %></td>
		</tr>
		<tr>
			<th>NAME</th><td><%=saram.getName() %></td>
		</tr>
		<tr>
			<th>AGE</th><td><%=saram.getAge() %></td>
		</tr>
		<tr>
			<th>JOB</th><td><%=saram.getJob() %></td>
		</tr>
		<tr>
			<th>ADDR</th><td><%=saram.getAddr() %></td>
		</tr>
		<tr>
			<th>EMAIL</th><td><%=saram.getEmail() %></td>
		</tr>
		<tr>
			<th>PHONE</th><td><%=saram.getPhone() %></td>
		</tr>
	</table>
	<a href ="modify_form.jsp?seq=<%=saram.getSeq() %>">수정</a>
	<a href ="delete.jsp?seq=<%=saram.getSeq() %>">삭제</a>
</body>
=======
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
	<h1>회원 상세보기</h1>
	<%
	int seq = Integer.parseInt(request.getParameter("seq"));
	
	SaramDAO dao = new SaramDAO();
	SaramDTO saram = dao.findBySeq(seq);;
	%>
	<hr/>
	<table>
		<tr>
			<th>SEQ</th><td><%=saram.getSeq %></td>
		</tr>
		<tr>
			<th>NAME</th><td><%=saram.getSeq %></td>
		</tr>
		<tr>
			<th>AGE</th><td><%=saram.getSeq %></td>
		</tr>
		<tr>
			<th>JOB</th><td><%=saram.getSeq %></td>
		</tr>
		<tr>
			<th>ADDR</th><td><%=saram.getSeq %></td>
		</tr>
		<tr>
			<th>EMAIL</th><td><%=saram.getSeq %></td>
		</tr>
		<tr>
			<th>PHONE</th><td><%=saram.getSeq %></td>
		</tr>
	</table>
	<a href ="modify_form.jsp?seq=<%=saram.getSeq() %>">수정</a>
	<a href ="delete.jsp?seq=<%=saram.getSeq() %>">삭제</a>
</body>
>>>>>>> 1d993694650aab931775d892876beed432f71b42
</html>