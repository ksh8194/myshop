<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="memberMgr" class="shop.member.MemberMgr"/>
    
<% 
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
boolean b = memberMgr.chkId(id);
//out.print(b);
%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복검사</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script src="../js/script.js"></script>
</head>
<body>
<b><%=id%> </b>
<%
if(b){
%>
는(은) 이미 사용중인 id 입니다.<p/>
<a href="#" onclick="opener.document.regForm.id.focus(); window.close()">닫기</a>
<% 	
}else{
%>
는(은) 사용 가능합니다<p/>
<a href="#" onclick="opener.document.regForm.passwd.focus(); window.close()">닫기</a>
<% 	
}
%>
</body>
</html>