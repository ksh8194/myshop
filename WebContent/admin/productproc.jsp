<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productMgr" class="shop.product.ProductMgr" />
<%
String flag = request.getParameter("flag");
boolean result = false;

if(flag.equals("insert")){
	result = productMgr.insertProduct(request); 
}else if(flag.equals("update")){
	
}else if(flag.equals("delete")){
	
}else{
	response.sendRedirect("productmanager.jsp");
}

if(result) {
%>
	<script>
	alert("정상 처리되었습니다");
	location.href="productmanager.jsp";
	</script>
<% }else{%>
<script>
	alert("오류!!!\n관리자에게 문의");
	location.href="productmanager.jsp";
	</script>
<%
}
%>
