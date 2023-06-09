<%@page import="org.comstudy.model.SaramDTO"%>
<%@page import="org.comstudy.model.SaramDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/inc/header.jsp" %>



<h1>사람 정보 상세 보기</h1>
<%
// 파라미터는 모두 문자열이다. 
// 정수로 형변환 하기 위해 Integer.parseInt() 사용.
int seq = Integer.parseInt(request.getParameter("seq"));

SaramDAO dao = new SaramDAO();
SaramDTO saram = dao.findBySeq(seq);
%>

<!-- 전달 받은 seq를 이용해서 상세페이지 구현. -->
seq : <%=seq %><br />
Saram : <%=saram %> <br />
<hr />
<table>
   <tr>
      <th>SEQ</th><td><%=saram.getSeq() %></td>
   </tr>
   <tr>
      <th>ID</th><td><%=saram.getId() %></td>
   </tr>
   <tr>
      <th>NAME</th><td><%=saram.getName() %></td>
   </tr>
   <tr>
      <th>EMAIL</th><td><%=saram.getEmail() %></td>
   </tr>
</table>
<a href="modify_form.jsp?seq=<%=saram.getSeq() %>">수정</a> , 
<a href="delete.jsp?seq=<%=saram.getSeq() %>">삭제</a><br/>

<%@ include file="/inc/tail.jsp" %>