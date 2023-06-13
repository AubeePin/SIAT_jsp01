<%@page import="java.util.List"%>
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
<%!
	private SaramDAO dao = new SaramDAO();

%>
<h1>회원 목록</h1>
<table>
<%
List<SaramDTO> list = dao.selectAll();
if(list != null && list.size()>0){
	for(SaramDTO saram : list){
%>

<tr>
	<td><%=saram.getSeq() %></td>
	<td><a href="detail.jsp?seq=<%=saram.getSeq() %>"><%=saram.getName() %></a></td>
	<td><%=saram.getJob() %></td>
	<td><%=saram.getPhone() %></td>
	<td><%=saram.getAddr() %></td>
	<td><%=saram.getAge() %></td>
</tr>
<%
	}
}
%>
</table>
<p>
	<a href ="insert.jsp">입력</a>
</p>
</body>
</html>