<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<h1>Member 로그인 페이지</h1>
<%
String userId = (String)session.getAttribute("user_id");
String userName = (String)session.getAttribute("user_name");
if(userId != null) {
	out.println("ID : " + userId + ", ");
	out.println(userName + "님 환영 합니다. ");
%>
	<!-- HTML 사용 가능 -->
	<p><a href="logout.do">로그아웃</a></p>
<%
} else {
	out.println("로그인 전입니다.");
%>
<form method="post">
<table border="1">
	<tr>
		<th>아이디</th><td><input name="id" value="hong" /></td>
	</tr>
	<tr>
		<th>비밀번호</th><td><input type="password" name="password" value="1234" /></td>
	</tr>
	<tr>
		<th>관심분야</th>
		<td>
			<input type="checkbox" name="checkbox" value="java" />JAVA<br/>
			<input type="checkbox" name="checkbox" value="ai" checked/>Ai<br/>
			<input type="checkbox" name="checkbox" value="android" />Android<br/>
			<input type="checkbox" name="checkbox" value="react" />React<br/>
		</td>
	</tr>
	<tr>
		<th> </th>
		<td>
			<input type="submit" value="Login" /> 
			<input type="reset" value="Reset" />
		</td>
	</tr>
</table>
</form>
<%
} //end of else
%>
</body>
</html>