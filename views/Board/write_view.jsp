<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%@include file="../Layout/Header.jsp" %>
<table width="600" cellpadding="1" cellspacing="1" border="1">
<form action="write" method="post">
<tr>
<td> 이름 </td>
<td> <input type="text" name="b_name" size = "60"> </td>
</tr>
<tr>
<td> 제목 </td>
<td> <input type="text" name="b_subject" size = "60"> </td>
</tr>
<tr>
<td> 내용 </td>
<td> <textarea name="b_content" rows="10" ></textarea> </td>
</tr>
<tr >
<td colspan="5"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="list.do">목록보기
</a></td>
</tr>
</form>
</table>
<%@include file="../Layout/Footer.jsp" %>
</body>
</html>