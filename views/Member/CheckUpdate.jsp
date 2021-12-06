<%@page import="yuhan.mvc.member.dao.LoginDao"%>
<%@page import="yuhan.mvc.member.dto.LoginDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	LoginDto dto = (LoginDto)session.getAttribute("member");
	dto.setEmail(request.getParameter("email"));
	dto.setTel1(request.getParameter("tel1"));
	dto.setTel2(request.getParameter("tel2"));
	dto.setTel3(request.getParameter("tel3"));
	
	LoginDao dao = new LoginDao();
	boolean check = dao.updateMember(dto);
	
	out.write("<script>");
	if(check){
		session.setAttribute("member", dto);
		out.write("alert('수정완료!!MyPage로...');");
		out.write("location.href = '/Member/MyPage';");
	}else{
		out.write("alert('수정실패!!이전페이지로...');");
		out.write("history.back();");
	}
	out.write("</script>");
	
%>













