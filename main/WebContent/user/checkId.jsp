<%@page import="user.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//데이터
String id= request.getParameter("id");

//DB
UserDAO userDAO = UserDAO.getInstance();
boolean exist = userDAO.isExistId(id); 

if(exist){
%>
exist
<%}else{%>
non_exist
<%} %>