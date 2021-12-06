<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="yuhan.mvc.cook.dao.CookDao"%>
<%-- <%@page import="yuhan.mvc.cook_image.dto.CookImageDto"%> --%>
<%@page import="java.util.ArrayList"%>
<%
    CookDao dao = new CookDao();
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
</head>
<body>
<jsp:include page="../Layout/Header.jsp"/> 
<c:forEach items="${cook_image}" var="dto">
			<p>${dto.no} . </p>
			</c:forEach>
</body>
</html>