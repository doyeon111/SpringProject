<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../resources/movie/css/main.css" />
		<noscript>
		<link rel="stylesheet" href="../resources/movie/assets/css/noscript.css" />
		</noscript>
</head>
<body>
<jsp:include page="../Layout/Header.jsp"/> 
<table width="500" cellpadding="0" cellspacing="0" border="1" id = "table">
<form action="modify" method="post">
<input type="hidden" name="b_no" value="${content_view.b_no}">
<tr>
<td id="border"> 번호 </td>
<td id="border"> ${content_view.b_no} </td>
</tr>
<tr>
<td id="border"> 이름 </td>
<td id="border"> <input type="text" name="b_name" value="${content_view.b_name}"></td>
</tr>
<tr>
<td id="border"> 제목 </td>
<td id="border"> <input type="text" name="b_subject" value="${content_view.b_subject}"></td>
</tr>
<tr>
<td id="border"> 내용 </td>
<td id="border"> <textarea width ="1500" rows="10"
name="b_content" >${content_view.b_content}</textarea></td>
</tr>
<tr >
<td colspan="2"> <input type="submit" value="수정"> &nbsp;&nbsp; 
<a href="list">
목록보기</a>
&nbsp;&nbsp; <a href="delete?b_no=${content_view.b_no}">삭제</a> &nbsp;&nbsp; 
</tr>
</form>
</table>
<jsp:include page="../Layout/Footer.jsp"/>
</body>
</html>