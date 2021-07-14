<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>    
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="board.bean.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="board.dao.BoardDAO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%
   
		BoardDAO boardDAO = BoardDAO.getInstance();
		
		List<BoardDTO> list = boardDAO.getBoardListAll();
		
		
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		
		JSONObject json = new JSONObject();  
		if(list !=null){
		

			JSONArray array = new JSONArray();  
			
			for(int i=0; i<list.size(); i++){
				BoardDTO boardDTO =	list.get(i);
				
				JSONObject temp = new JSONObject();
				temp.put("seq", boardDTO.getSeq());
			    temp.put("id", boardDTO.getId());
			    temp.put("name", boardDTO.getName());
			    temp.put("email", boardDTO.getEmail());
			    temp.put("subject", boardDTO.getSubject());
			    temp.put("content", boardDTO.getContent());
			    
			    temp.put("ref", boardDTO.getRef());
			    temp.put("lev", boardDTO.getLev());
			    temp.put("step", boardDTO.getStep());
			    temp.put("pseq", boardDTO.getPseq());
			    temp.put("reply", boardDTO.getReply());
			    temp.put("hit", boardDTO.getHit());
			    temp.put("logtime", sdf.format(boardDTO.getLogtime()));
			   
			 
			    		
		    	array.add(i,temp);
				    	
			}//for
			
				json.put("list",array);
		}		
				//System.out.println(list);
				out.println(json);
%>