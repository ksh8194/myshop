<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8"); %>
 <jsp:useBean id="mbean" class="shop.member.MemberBean"/>
 <jsp:setProperty property="*" name="mbean"/>
 <jsp:useBean id="memberMgr" class="shop.member.MemberMgr"/>
 <%
 //String id = (String)session.getAttribute("idKey"); //히든안섰을때
 String id = mbean.getId(); //히든 했을시 이거씀
 
boolean b = memberMgr.memberUpdate(mbean,id);
 
if(b){
	%>
	<script>
		alert("수정 성공");
		location.href="../guest/guest_index.jsp";
	</script>
	<%}else{ %>
	<script>
		alert("수정 실패\n관리자에게 문의 바람");
		history.back();
	</script>
	<% 
}
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>