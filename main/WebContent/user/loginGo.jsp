<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="user.bean.UserDTO"%>
<%@page import="user.dao.UserDAO"%>
<%
//데이터
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

//DB
UserDAO userDAO = UserDAO.getInstance();
UserDTO userDTO = userDAO.login(id,pwd);

if(userDTO != null) {
	session.setAttribute("memId", id);
	session.setAttribute("memName", userDTO.getName());
	session.setAttribute("memEmail",userDTO.getEmail1()+"@"+userDTO.getEmail2());
%>
ok
<%}else{ %>
fail
<%} %>
