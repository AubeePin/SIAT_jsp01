<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>멤버 추가</h1>
<form action="input.do" method="POST">
<table>
   <tr>
      <th>NAME</th><td><input type="text" name="name" value="이순자"/></td>
   </tr>
   <tr>
      <th>EMAIL</th><td><input type="text" name="email" value="00@naver.com"/></td>
   </tr>
   <tr>
      <th>PHONG</th><td><input type="text" name="phone" value="010-000-000"/></td>
   </tr>
   <tr>
      <th colspan="3"><input type="submit" value="SAVE"/></th>
   </tr>
</table>
</form>

</body>
</html>