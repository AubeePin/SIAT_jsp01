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
<h1>수정 페이지</h1>
<%
SaramDAO dao = new SaramDAO();
SaramDTO saram = null;

if(request.getParameter("seq") !=null) {
	int seq =Integer.parseInt(request.getParameter("seq"));
	saram = dao.findBySeq(seq);
}
%>
<form action="modify_ok.jsp" method="post">
	<input type="hidden" name="seq" value="<%=saram.getSeq() %>" />
	<table>
		<tr>
			<th>SEQ</th><td><%=saram.getSeq() %></td>
		</tr>
		<tr>
			<th>성함</th><td><input name="name" value="<%=saram.getName()%>" /></td>
		</tr>
		<tr>
			<th>나이</th><td><input name="age" value="<%=saram.getAge()%>" /></td>
		</tr>
		<tr>
			<th>직업</th><td><input name="job" value="<%=saram.getJob()%>" /></td>
		</tr>
		<tr>
			<th>주소</th><td><input name="addr" value="<%=saram.getAddr()%>" /></td>
		</tr>
		<tr>
			<th>이메일</th><td><input name="email" value="<%=saram.getEmail()%>" /></td>
		</tr>
		<tr>
			<th>폰번호</th><td><input name="phone" value="<%=saram.getPhone()%>" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="저장" /></td>
		</tr>
	</table>
</form>
</body>
</html>