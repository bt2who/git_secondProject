<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../menu.jsp"/>
<style type="text/css">
#subjectDiv,#contentDiv{
	color:red;
	font-size: 7pt;
	font-weight: bold;
}
</style>

<h1>글쓰기</h1>
</head>

<body style="background: linear-gradient(to right, white, #FFE4E1 ) ; color:black;">

<form name="freeboard" method="post" action="/main/freeboard/freeboardWriteGo.jsp">
<table border="1" cellpadding="5" cellspacing="0" bgcolor="#FFE4E1" >
	<tr>
		 <td align="center">제목</td>
		 <td>
	 		<input type="text" name="subject" id="subject" placeholder="제목" size="44">
	 	<div id="subjectDiv"></div>
	 	</td>
	</tr>
	
	<tr>
	 	<td align="center">내용</td>
	 	<td>
	 		<textarea cols="40" rows="10" name="content" id="content" size="30" placeholder="내용"></textarea>
	 	<div id="contentDiv"></div>
	 	</td>
	</tr>
	
	<tr>
		 <td colspan="2" align="center">
	 		 <input type="button" value="글쓰기" id="writeBtn">
	 		 <input type="reset" value="다시작성" >
	 	</td>
	</tr>

</table>

</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/main/js/freeboard.js"></script>

</body>
</html>