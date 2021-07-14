<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="../menu.jsp"/>
<br>
<body style="background: linear-gradient(to right, white, #FFE4E1 ) ; color:black;">

	
<h1>로그인 화면</h1>
<form name="loginForm" method="post" action="../mainpage/index.html">
<table border="1" cellpadding="5" cellspacing="0">

<tr>
	<td>아이디</td>
	<td><input type="text" id="id" name="id">
 		<div id="idDiv" ></div></td>
</tr>

<tr>
	<td>비밀번호</td>
	<td><input type="password"  id="pwd" name="pwd">
		 <div id="pwdDiv" ></div></td>
</tr>

<tr>
	<td colspan="2" align ="center">
		<input type="button" value="로그인" id="loginBtn">
		<input type="reset"  value="다시작성"  >
	</td>
</tr>

</table>
<br><br>
<div id="loginResult"></div>
</form>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
 <script>
$('#loginBtn').click(function(){
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	
	 if(!$('#id').val()){
		$('#idDiv').html("아이디 입력");
		$('#idDiv').css('color','red');
		$('#idDiv').css('font-size','8pt');
		$('#idDiv').css('font-weight','bold');
	}else if($('#pwd').val() =='' ){
		$('#pwdDiv').html("비밀번호 입력");
		$('#pwdDiv').css('color','red');
		$('#pwdDiv').css('font-size','8pt');
		$('#pwdDiv').css('font-weight','bold'); 
	}else{
		$.ajax({
			url:'/main/user/loginGo.jsp',   
			type: 'post',
			data: {'id': $('#id').val(), 
				'pwd':$('#pwd').val() },
			dataType: 'text',
			success: function(data){
				data = data.trim();
				
				if(data == 'ok'){
					location.href = 'loginOk.jsp';
				}else if(data=='fail'){
					$('#loginResult').text('아이디 또는 비밀번호가 맞지 않습니다.');
					$('#loginResult').css('color','red');
					$('#loginResult').css('font-size','15pt');
					$('#loginResult').css('font-weight','bold'); 
				}
			},
			error: function(err){
				console.log(err);
			} 
		});	
		
		
		
		
	}	
});	
</script>

</body>
</html>