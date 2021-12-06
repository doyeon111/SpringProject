<%@page import="yuhan.mvc.member.dto.LoginDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	LoginDto dto = (LoginDto)session.getAttribute("member");
%>
<script type="text/javascript">
	function check(){
		if(document.del.password.value == ""){
			alert("비밀번호를 입력하십시오!!!");
		}else{
			document.del.submit();
		}
	}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../resources/movie/css/main.css" />
		<noscript>
		<link rel="stylesheet" href="../resources/movie/assets/css/noscript.css" />
		</noscript>
<%@include file="../Layout/Header.jsp" %>
<div align="center">
	<form action="CheckDelete" method="post" name = "del">
		<table border="1">
			<tr>
				<th><%=dto.getId() %>님의 비밀번호 확인</th>
			</tr>
			<tr>
				<td>
					<input type="password" name = "password" placeholder="비밀번호 확인">
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" value="탈퇴" onclick="javascript:check()">
					<input type="button" onclick="history.back()" value="돌아가기">				
				</td>
			</tr>
		</table>
	</form>
</div>


<%@include file="../Layout/Footer.jsp" %>