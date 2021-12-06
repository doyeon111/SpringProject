<%@page import="yuhan.mvc.member.dto.LoginDto"%>
<%@page import="yuhan.mvc.member.dao.LoginDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("login");
	LoginDao dao = new LoginDao();
	LoginDto dto = dao.memberInfo(id);

	session.setAttribute("member", dto);
%>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<%@include file = "../Layout/Header.jsp" %>
<section class="section wf-section">
			<div class="container jetboost-favorites-list-v7re w-container">
				<div class="w-layout-grid recipe-page-wrapper">
					<div class="recipe-page-main">
					<div class="relative"></div>
 <table class="type10">
 	<thead>
									<tr>
										<th scope="cols"><h2>아이디</h2></th>
										<th scope="cols"><h2>이름</h2></th>
										<th scope="cols"><h2>이메일</h2></th>
										<th scope="cols"><h2>전화번호</h2></th>
									</tr>
								</thead>
								<tbody>
								<tr>
								<td><h2><%=dto.getId() %></h2></td>
								<td><h2><%=dto.getName() %></h2></td>
								<td><h2><%=dto.getEmail() %></h2></td>
								<td><h2><%=dto.getTel1() %>-<%=dto.getTel2() %>-<%=dto.getTel3() %></h2></td>
								</tr>
 	<tr>
 		<td colspan="4" align="right">
 			<input type="button" value = "수정" class="button collection-item w-button" onclick="location.href = '/Member/UpdateForm'">
 			<input type="button" value = "회원탈퇴"  class="button collection-item w-button" onclick="location.href = '/Member/DeleteForm'">
 		</td>
 	</tr>
 </table>
 </div>
 </div>
 </div>
 </section>
<%@include file = "../Layout/Footer.jsp" %>