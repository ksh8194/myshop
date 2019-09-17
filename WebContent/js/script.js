function zipCheck(){
	//alert('zip');
	url = "zipcheck.jsp?check=y";
	window.open(url,"post","toolbar=no,width=350,height=300,top=200,left=300,status=yes,scrollbars=yes,menubar=no");
	
}

function idCheck(){
	//alert("id");
	if(regForm.id.value == "") {
		alert('id를 입력하시오');
		regForm.id.focus();
	}else{
		url = "idcheck.jsp?id=" + regForm.id.value;
		window.open(url,"id","toolbar=no,width=350,height=300,top=200,left=300,status=yes,scrollbars=yes,menubar=no");
	}
}

function inputCheck(){
	//alert('inputCheck');
	//입력자료 검사 후 추가 처리
	if(regForm.id.value ===""){
		alert("아이디 입력");
		regForm.id.focus();
		return;
	}
	if(regForm.passwd.value ===""){
		alert("비밀번호 입력");
		regForm.passwd.focus();
		return;
	}
	if(regForm.passwd.value !== regForm.repasswd.value){
		alert("비밀번호 불일치");
		regForm.passwd.focus();
		return;
	}
	if(regForm.name.value ===""){
		alert("이름 입력");
		regForm.name.focus();
		return;
	}
	if(regForm.email.value===""){
		alert("이메일 입력");
		regForm.email.focus();
		return;
	}
	//정규 표현식으로 이메일 검사

	var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
	if(!regForm.email.value.match(regExp)){
		alert("이메일 정확히 입력");
		regForm.email.focus();
		return;
	}
	
	if(regForm.phone.value ===""){
		alert("전화번호 입력");
		regForm.phone,focus();
		return;
	}
		
//나머지 생략
	
	regForm.submit();
	

	
	
		

}