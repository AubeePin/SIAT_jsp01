<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>신규 회원 정보 입력</h1>
<form action ="input_ok.jsp" method="post">
	<table>
		<tr>
			<th>성함</th><td><input name="name" value="성함"/></td>
		</tr>
		<tr>
			<th>나이</th><td><input name="age" value="나이"/></td>
		</tr>
		<tr>
			<th>직업</th><td><input name="job" value="직업"/></td>
		</tr>
		<tr>
			<th>주소</th><td><input name="addr" value="사는곳"/></td>
		</tr>
		<tr>
			<th>메일</th><td><input name="email" value="메일"/></td>
		</tr>
		<tr>
			<th>연락처</th><td><input name="phone" value="연락처"/></td>
		</tr>
		<tr>
				<td><input type="submit" value="저장" /></td>
			</tr>
	</table>
</form>

</body>
</html>