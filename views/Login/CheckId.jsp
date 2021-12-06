<%@page import="yuhan.mvc.member.dao.LoginDao"%>
<%@page import="yuhan.mvc.member.dto.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");

	LoginDto dto = new LoginDto();
	
	dto.setName(name);
	dto.setTel1(tel1);
	dto.setTel2(tel2);
	dto.setTel3(tel3);
	
	LoginDao dao = new LoginDao();
	
	String id = dao.findID(dto);

	request.setAttribute("id", id);
	
	pageContext.forward("/Login/ResultId");
%>

















