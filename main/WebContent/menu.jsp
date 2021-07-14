<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

li {
   list-style: none;
   
   float: left;
}

a {
	
	padding: 0 20px;
	background-color:darkblue;
	color:white;
	text-decoration: none;
}
a:hover{
	color: red;
	background-color:darkblue;
}

#menubar{
	background-color:darkblue;
}

</style>


</head>
<body style="background: linear-gradient(to right, white, #FFE4E1 ) ; color:black;">
<div title="클릭시 메인화면으로 이동합니다.">
<img src="/main/image/logo.png" alt="로고" onclick="location.href='/main/index.jsp'" 
	style="cursor:pointer;">
</div>	
<div id=menubar>
		<ul>
			<li><a href="/main/freeboard/freeboard.jsp">자유게시판</a></li>
		
			<c:if test="${memId == null }">		
			<li><a href="/main/user/create.jsp">회원가입</a></li>
			<li><a href="/main/user/login.jsp">로그인</a></li>
			</c:if>
			
			<c:if test="${memId != null }">
			
			<li><a href="/main/freeboard/freeboardWrite.jsp">글쓰기</a></li>
			<li><a href="/main/user/logout.jsp">로그아웃</a></li>
			</c:if>
			
			
		</ul>
		
</div>		
		
		<br><br>
		
		
		
		
		
	
		
</body>
</html>
