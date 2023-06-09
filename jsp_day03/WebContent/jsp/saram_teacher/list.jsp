<%@page import="org.comstudy.model.SaramDAO"%>
<%@page import="org.comstudy.model.SaramDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/inc/header.jsp" %>


      <%!
      // 선언부
      private SaramDAO dao = new SaramDAO();
      %>
      
      <h1>사람 목록</h1>
      <table class="table table-dark">
      <%
      // 스크립트 릿
      List<SaramDTO> list = dao.selectAll();
      if(list != null && list.size() > 0) {
         for(SaramDTO saram : list) {
      %>
         <!-- HTML 문법 사용 가능 -->
         <tr>
            <td><%=saram.getSeq() %></td>
            <td><%=saram.getId() %></td>
            <td><a href ="detail.jsp?seq=<%=saram.getSeq()%>"><%=saram.getName() %></td>
            <td><%=saram.getEmail() %></td>
         </tr>
      <%
         } // end of for
      } // end of if
      %>
      </table>
      <p>
      	<a href = "input_form.jsp">입력</a>
      </p>
      
<%@ include file="/inc/tail.jsp" %>