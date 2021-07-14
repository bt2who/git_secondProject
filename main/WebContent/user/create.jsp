<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../menu.jsp"/>

<style type="text/css">
#idDiv,#pwdDiv,#nameDiv{
color:red;
font-size:7pt;
font-weight:bold;
}
</style>

</head>
<body style="background: linear-gradient(to right, white, #FFE4E1 ) ; color:black;">
<br>
<h1>회원가입</h1>
												
<form name="create" method="post" action="/main/index.jsp"> 
<table border="1" cellpadding="5" cellspacing="0"> 

 <tr>
  	<td align = "center" >아이디
  	</td>
  	<td width="300">
  	<input type="text" name="id" id="id" placeholder="아이디 입력">
  	<input type="hidden" name="check" id="check" value="">
     <div id="idDiv" ></div>
    </td>
 </tr>
  
 <tr>
   <td align = "center" >비밀번호
   </td>
   <td><input type="password" id="pwd" name="pwd">
   <div id="pwdDiv" ></div>
   </td>
 </tr>
 
 <tr>
   <td align = "center" >재입력
   </td>
   <td><input type="password" id="repwd" name="repwd">
   
   </td>
 </tr>
 
 <tr>
    <td align = "center" width="100">이름
    </td>
    <td><input type="text" name="name" id="name" placeholder="이름 입력">
    <div id="nameDiv" ></div>  
    </td>
  </tr> 
   
  <tr>
    <td align = "center">핸드폰</td>
    <td><select name="phone1" style="width: 50px;">
   		<option value="010">010</option>
   		<option value="011">011</option>
   		<option value="011">017</option>
   		<option value="011">018</option>
   		<option value="019">019</option>  
   	    </select> - 
   	  	  <input type="text" name="phone2" size="4" placeholder="번호입력">-
   	   
   	  	  <input type="text" name="phone3" size="4" placeholder="번호입력">
   	    <div id="phone2Div" ></div>  <div id="phone3Div" ></div>
   	 </td>
   </tr>
    
  <tr>
      <td colspan ="2" align = "center">
     	<input type="button" value="회원가입" id="writeBtn" >
     	<input type="reset"  value="다시작성">
     </td>
  </tr>
   
</table>
</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/main/js/user.js"></script>

</body>
</html>