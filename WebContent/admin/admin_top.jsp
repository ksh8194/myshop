<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String adminid = (String)session.getAttribute("adminKey");
//adminkey라고 하는 이름으로 아직 세션 전체고객을 관리하는 화면중 일부분.

//로그인 안했을때 이쪽으로옴
if(adminid == null){
	response.sendRedirect("adminlogin.jsp");
}
%>
<table style="width: 90%">
  <tr style="background-color: #aabbcc; text-align: center;">
  	<td><a href="../guest/guest_index.jsp">홈페이지</a></td>
  	<td><a href="adminlogout.jsp">로그아웃</a></td>
  	<td><a href="membermanager.jsp">회원관리</a></td>
  	<td><a href="productmanager.jsp">상품관리</a></td>
  	<td><a href="ordermanager.jsp">주문관리</a></td>
  </tr>
</table>

