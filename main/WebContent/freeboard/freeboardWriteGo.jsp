<%@page import="board.dao.BoardDAO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../menu.jsp" />
<%
//데이터
request.setCharacterEncoding("UTF-8");
String subject = request.getParameter("subject");
String content = request.getParameter("content");

String id = (String)session.getAttribute("memId");
String name = (String)session.getAttribute("memName");
String email = (String)session.getAttribute("memEmail");

Map<String, String> map = new HashMap<String, String>();
map.put("id", id);
map.put("name", name);
map.put("email", email);
map.put("subject", subject);
map.put("content", content);

//DB
BoardDAO boardDAO = BoardDAO.getInstance();
boardDAO.boardWrite(map);

%>



<h3>작성하신 글을 저장하였습니다.</h3>

<script type="text/javascript">
window.onload=function(){
	
	location.href="/main/freeboard/freeboard.jsp";
}
</script>