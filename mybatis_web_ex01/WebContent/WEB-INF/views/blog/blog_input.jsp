<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>새글 입력 페이지</h1>

<form action="input.do" method="POST">
<table>
   <tr>
      <th>AUTHOR</th><td><input type="text" name="author" value="tester10"/></td>
   </tr>
   <tr>
      <th>TITLE</th><td><input type="text" name="title" value="TEST10"/></td>
   </tr>
   <tr>
      <th>CONTENT</th><td><textarea type="text" name="content" rows="5">TEST10 content</textarea></td>
   </tr>
   <tr>
      <th colspan="2"><input type="submit" value="SAVE"/></th>
   </tr>
</table>
</form>

</body>
</html>