<%@page import="yuhan.mvc.member.dto.LoginDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	LoginDto dto = (LoginDto)session.getAttribute("member");	
%>
<script>
	function check(){
		if(document.update.email.value == ""){
			alert("이메일을 입력하십시오!");
		}else if(document.update.tel1.value == ""){
			alert("전화번호를 입력하십시오!");
		}else if(document.update.tel2.value == ""){
			alert("전화번호를 입력하십시오!");
		}else if(document.update.tel3.value == ""){
			alert("전화번호를 입력하십시오!");
		}else{
			document.update.submit();
		}
	}
</script>

<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../resources/movie/css/main.css" />
		<noscript>
		<link rel="stylesheet" href="../resources/movie/assets/css/noscript.css" />
		</noscript>
<%@include file = "../Layout/Header.jsp" %>
 	<form action="CheckUpdate" method="post" name = "update">
 		<table border="1" width = "450">
		 	<%-- <tr>
		 		<td>번호</td>
		 		<td><%=dto.getNo() %></td>
		 	</tr> --%>
		 	<tr>
		 		<td>아이디</td>
		 		<td><%=dto.getId() %></td>
		 	</tr>
		 	 	<tr>
		 		<td>이름</td>
		 		<td><%=dto.getName() %></td>
		 	</tr>
		 	 	<tr>
		 		<td>이메일</td>
		 		<td><input type="text" name = "email" value="<%=dto.getEmail() %>"></td>
		 	</tr>
		 	 	<tr>
		 		<td>전화번호</td>
		 		<td>
					<select name = "tel1">
						<option value="010" selected="selected">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="019">019</option>
					</select>
					-<input type="text" size = "5" maxlength="4" value="<%=dto.getTel2() %>" name = "tel2">
					-<input type="text" size = "5" maxlength="4" value="<%=dto.getTel3() %>" name = "tel3">
				</td>
		 	</tr>
		 	<tr>
		 		<td colspan="2" align="right">
		 			<input type="button" value = "수정" onclick="javascript:check()">
		 			<input type="button" value = "돌아가기" onclick="history.back()">
		 		</td>
		 	</tr>
		 </table>
 	
 	</form>
<%@include file = "../Layout/Footer.jsp" %>