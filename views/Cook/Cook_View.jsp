<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
</head>
<body>
<jsp:include page="../Layout/Header.jsp"/> 
<b></b>
<p> ${Cook_View.no} </p>
<p> ${Cook_View.description} </p>
<b>제목</b> 
<p> ${Cook_View.name}</p>
<b>작성자</b>
<p> ${Cook_View.writer}</p>
<b>날짜</b>
<p> ${Cook_View.c_date}</p>
<jsp:include page="../Layout/Footer.jsp"/>
</body>
</html> --%> 














<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<h1 class="recipe-page-heading">Ham and Cheese Scramble</h1>
						<div class="page-meal-type-block">
							<div class="meal-type-line"></div>
							<div class="meal-type-text big">Breakfast</div>
							<div class="meal-type-line"></div>
						</div>
						<div class="relative">
							<img loading="lazy"
								src="https://assets.website-files.com/5fc5ce7399c0fc0080085e1a/5fc5ce7399c0fc244c085e4d_scrambled-egg-5764950_1280.jpeg"
								alt=""
								sizes="(max-width: 479px) 93vw, (max-width: 991px) 92vw, 88vw"
								srcset="https://assets.website-files.com/5fc5ce7399c0fc0080085e1a/5fc5ce7399c0fc244c085e4d_scrambled-egg-5764950_1280-p-1080.jpeg 1080w, https://assets.website-files.com/5fc5ce7399c0fc0080085e1a/5fc5ce7399c0fc244c085e4d_scrambled-egg-5764950_1280.jpeg 1280w"
								class="recipe-main-image" />
							<div title="Add to favorites"
								class="card-favorite-buttons jetboost-toggle-favorite-v7re">
								<a href="#" class="favorite-button w-button"></a><a href="#"
									class="favorite-button active w-button"></a>
							</div>
						</div>
						<div class="ingredients-block">
							<h2 class="white-text">Ingredients</h2>
							<div class="ingredients-list w-richtext">
								<ul role="list">
									<li>Vives, inquit Aristo.</li>
									<li>Re mihi non aeque.</li>
									<li>Polemoni et iam.</li>
									<li>Quid ergo aliud.</li>
								</ul>
							</div>
						</div>
						<div class="directions-block">
							<h2>Directions</h2>
							<div class="directions-list w-richtext">
							${Cook_View.description}
								<!-- <ol role="list">
									<li>Ergo opifex plus sibi proponet ad formarum quam civis
										excellens ad factorum pulchritudinem.</li>
									<li>Iam in altera philosophiae parte.</li>
									<li>Mihi enim erit isdem istis fortasse iam utendum.</li>
									<li>Primum in nostrane potestate est, quid meminerimus.</li>
									<li>Satis est tibi in te, satis in legibus, satis in
										mediocribus amicitiis praesidii.</li>
								</ol> -->
							</div>
						</div>
					</div>
					<div class="recipe-page-sidebar">
						<div class="sidebar-block">
							<div class="sidebar-main-ingredient-wrapper">
								<h4>종류</h4>
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
					</div>
				</div>
				<a href="/" class="back-button w-button">Back to Recipes</a>
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

