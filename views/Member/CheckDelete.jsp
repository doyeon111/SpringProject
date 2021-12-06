<%@page import="yuhan.mvc.member.dao.LoginDao"%>
<%@page import="yuhan.mvc.member.dto.LoginDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	LoginDto dto = (LoginDto)session.getAttribute("member");
	String password = request.getParameter("password");
	
	if(!dto.getPassword().equals(password)){
		out.write("<script>");
		out.write("alert('비밀번호가 틀렸습니다.!!이전페이지로....');");
		out.write("history.back();");
		out.write("</script>");
	}else{
		LoginDao dao = new LoginDao();
		boolean check = dao.deleteMember(dto.getId());
		if(check){
			session.invalidate();
			out.write("<script>");
			out.write("alert('탈퇴성공!!!홈페이지로...');");
			out.write("location.href = '/';");
			out.write("</script>");
		}else{
			out.write("<script>");
			out.write("alert('탈퇴실패!!잠시후에 다시 시도하십시오..이전페이지로....');");
			out.write("history.back();");
			out.write("</script>");
		}
		
	}
	
%>













