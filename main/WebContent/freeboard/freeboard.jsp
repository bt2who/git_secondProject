<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../menu.jsp"/>

<style type="text/css">


table,tr,td{

  border:1px solid #000000;

  border-collapse:collapse;

}

td.colored:nth-child(even){

  background-color:#FFFFFF;

  color:darkred;

}

td.colored:nth-child(odd){

  background-color:#FFF0F5;

  color:darkred;
}
</style>


</head>


<body style="background: linear-gradient(to right, white, #FFE4E1 ) ; color:black;">
<form id="boardForm">
<table border="1"  width="770" cellpadding="5" frame="hsides" rules="rows" bgcolor="#FFE4E1" id="boardTable" >
<br><br>
<tr>
	<th width="100">글번호</th>
	<th width="300">제목</th>
	<th width="100">작성자</th>
	<th width="130">작성일</th>
	<th width="100">조회수</th>
</tr>
		
<c:if test="${list != null }" >
 	<c:forEach var="boardDTO" items="${list}">
 	<tr>
 		<c:set var="seq">${boardDTO.getSeq() }</c:set>
 		<c:set var="subject">${boardDTO.getSubject() }</c:set>
 		<c:set var="id">${boardDTO.getId() }</c:set>
 		<c:set var="logtime">${boardDTO.getLogtime() }</c:set>
 		<c:set var="hit">${boardDTO.getHit() }</c:set>
 	</tr>
 	</c:forEach>
 </c:if>		

	
</table>
</form>
<script type="text/javascript"></script>

<br>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
		url: 'boardGo.jsp',
		type: 'post',
		data: '',
		dataType:'json',  
		success:function(data){  
			 
			
			//alert(JSON.stringify(data));
		
			$.each(data.list, function(index, items){
				var seq = items.seq;
				var subject = items.subject;
				var id = items.id;
				var logtime = items.logtime;
				var hit = items.hit;
				
				$('<tr/>').append($('<td/>',{align:'center',
												text:items.seq}))
						.append($('<td/>',{align:'center',
												text:items.subject}))
						.append($('<td/>',{align:'center',
												text:items.id}))
							.append($('<td/>',{align:'center',
												text:items.logtime}))
							.append($('<td/>',{align:'center',
												text:items.hit}))
							.appendTo($('#boardTable'));	
				
				
			});
		
			
		},	
		
		error: function(err){
			console.log(err);
		} 
	});
	return false;
}); 

</script>

	
</body>
</html>
