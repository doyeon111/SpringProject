<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<!-- <link rel="stylesheet" href="../resources/movie/css/main.css" /> 
		<noscript>
		 <link rel="stylesheet" href="../resources/movie/assets/css/noscript.css" />
		</noscript> -->
<%@include file="../Layout/Header.jsp" %>
<div align="center">
	${msg }<br>
	<c:choose>
		<c:when test="${check }">
			MyPage | Board | Recipes | Search 기능이 추가되었습니다. <br>
		</c:when>
		<c:otherwise>
			ID찾기 | PW찾기 | 
			<a href = "/Login/loginform">Login</a> | 
		</c:otherwise>
	</c:choose>
	<a href = "/">Home</a>
</div>
<%@include file="../Layout/Footer.jsp" %>