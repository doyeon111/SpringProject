<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="yuhan.mvc.cook.dao.CookDao"%>
<%
    CookDao dao = new CookDao();
%>
<!DOCTYPE html>
<html data-wf-domain="cms-recipe-directory.webflow.io"
	data-wf-page="5fc5ce7399c0fc63a4085e14"
	data-wf-site="5fc5ce7399c0fc9d1a085e12" data-wf-status="1">
<head>
<meta charset="utf-8" />
<title>My Recipe - Recipe</title>
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="Webflow" name="generator" />
</head>
<body>
<jsp:include page="../Layout/Header.jsp"/>
<div class="menu-button w-nav-button">
	<div class="w-icon-nav-menu"></div>
</div>
		<section class="section wf-section">
			<div class="container jetboost-favorites-list-v7re w-container">
				<div class="w-layout-grid recipe-page-wrapper">
					<div class="recipe-page-main">
						<h1 class="recipe-page-heading">
							<c:forEach items="${cook_description}" var="dto" begin="1" end="1">
							<p>${dto.name} . </p>
							</c:forEach>
							</h1>

						<div class="relative">
						<c:forEach items="${cook_description}" var="dto" begin="0" end="0">			
							<img loading="lazy"
							
								src="${dto.image}"
								alt=""
								sizes="(max-width: 479px) 93vw, (max-width: 991px) 92vw, 88vw"
								srcset=""
								class="recipe-main-image" />
								</c:forEach>
							
						</div>
						
						<div class="directions-block">
							<h2>Directions</h2>
							<div class="directions-list w-richtext">
							<h3>
							<c:forEach items="${cook_description}" var="dto">
							<p>${dto.no} . </p>
							<img src="${dto.image}" alt="이미지" style="width:300px; height:200px;"/>	
							<p>${dto.description}</p>	
							</c:forEach>
							</h3>
							</div>
						</div>
					</div>
					<!-- <div class="recipe-page-sidebar">
						<div class="sidebar-block">
							<div class="sidebar-main-ingredient-wrapper">
								<h4>Topic</h4>
								<div class="main-ingredient">Eggs</div>
							</div>
						</div>
						<div class="sidebar-block">
							<h4>Diet &amp; Allergies</h4>
							<div class="w-dyn-list">
								<div role="list" class="diet-list w-dyn-items">
									<div role="listitem" class="w-dyn-item">
										<div class="tag-button">Gluten-Free</div>
									</div>
									<div role="listitem" class="w-dyn-item">
										<div class="tag-button">Nut-Free</div>
									</div>
								</div>
							</div>
						</div>
					</div> -->
				</div>
				<a href="/Cook/CookList" class="back-button w-button">Back to Recipes</a>
			</div>
		</section>
	</div>
	<script
		src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=5fc5ce7399c0fc9d1a085e12"
		type="text/javascript"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://assets.website-files.com/5fc5ce7399c0fc9d1a085e12/js/webflow.7718cb37c.js"
		type="text/javascript"></script>
	<jsp:include page="../Layout/Footer.jsp"/>
</body>
</html> 