<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로긴</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" >
<script type="text/javascript" src="../js/script.js"></script>
<script type="text/javascript">
window.onload = function(){  //callback function
	document.getElementById("btnAdminLogin").onclick = funcAdminLogin;
	document.getElementById("btnAdminHome").onclick = funcAdminHome;
}

function funcAdminLogin(){
	//alert("wow");
	if(adminLogin.adminid.value === ""){
		alert("아이디 입력");
		adminLogin.adminid.focus();
		return;
	}
	if(adminLogin.adminpasswd.value === ""){
		alert("비밀번호 입력");
		adminLogin.adminpasswd.focus();
		return;
	}
	
	adminLogin.submit();
} 

function funcAdminHome(){
	//alert("good");
	location.href = "../guest/guest_index.jsp";
}
</script>
</head>





<body>
<form action="adminproc.jsp" name="adminLogin" method="post">
<table>
  <tr>
  	<td colspan="2">* 관리자 로그인 *</td>
  </tr>
  <tr>
  	<td>i d : </td>
  	<td><input type="text" name="adminid"></td>
  </tr>
  <tr>
  	<td>passwd : </td>
  	<td><input type="text" name="adminpasswd"> </td>
  </tr>
  <tr>
  	<td colspan="2">
  		<input type="button" value="관리자 로그인" id="btnAdminLogin">
  		<input type="button" value="메인 페이지" id="btnAdminHome">
  	</td>
  </tr>
</table>
</form>
</body>
</html>





