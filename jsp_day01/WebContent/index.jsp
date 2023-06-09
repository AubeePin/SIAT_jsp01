<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!//!선언부 @ 지시어
// 선언부 
// class의 메소드 or 필드 선언 부분.
// _service() 메소드 외부
private String name = "HONG";
public void sayHello(JspWriter out) throws IOException {
   out.println(name + "님 안녕하세요!");
}
%>

<%
// 스크립트 릿
// _service() 메소드의 내부에 적용 되는 부분
// 메소드 내부이기 때문에 필드 선언 or 다른 메소드 선언이 불가능하다.
out.println("<h1>Hello world</h1>");
sayHello(out);
%>

<p>성명 : <%=name %></p>
<hr>
<%-- JSP 주석
쿼리스트링 형식으로 링크되는 페이지에 파라미터 전달
 --%>
<a href="info.jsp?name=<%=name%>&addr=seoul&age=38&job=doduk">상세정보</a>

</body>
</html>