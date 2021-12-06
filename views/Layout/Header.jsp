<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html data-wf-domain="cms-recipe-directory.webflow.io"
	data-wf-page="5fc5ce7399c0fc3d69085e13"
	data-wf-site="5fc5ce7399c0fc9d1a085e12" data-wf-status="1">
<head>
<meta charset="utf-8" />
<title>My Recipe</title>
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="Webflow" name="generator" />
<link
	href="https://assets.website-files.com/5fc5ce7399c0fc9d1a085e12/css/cms-recipe-directory.webflow.17a5b7989.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js"
	type="text/javascript">
	
</script>
<script type="text/javascript">
	WebFont.load({
		google : {
			families : [ "PT Sans:400,400italic,700,700italic",
					"Oswald:200,300,400,500,600,700" ]
		}
	});
</script>
<script type="text/javascript">
	!function(o, c) {
		var n = c.documentElement, t = " w-mod-";
		n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch
				&& c instanceof DocumentTouch)
				&& (n.className += t + "touch")
	}(window, document);
</script>
<link href=""rel="shortcut icon" type="image/x-icon" />
<link href=""rel="apple-touch-icon" />
<style>
:focus {
	outline: none;
}
</style>

<script id="jetboost-script" type="text/javascript">
	window.JETBOOST_SITE_ID = "ckiqnk4n9kjat0783wdu3suu9";
	(function() {
		d = document;
		s = d.createElement("script");
		s.src = "https://cdn.jetboost.io/jetboost.js";
		s.async = 1;
		d.getElementsByTagName("head")[0].appendChild(s);
	})();
</script>
</head>
<body>
	<!-- <div class="page"> -->
		<div data-collapse="small" data-animation="default"
			data-duration="400" data-easing="ease" data-easing2="ease"
			role="banner" class="navbar w-nav">
			<div class="navbar-container">
				<a href="/" aria-current="page" class="logo w-nav-brand w--current"><img
					src="https://assets.website-files.com/5fc5ce7399c0fc9d1a085e12/5fce97e5745130823f812401_logo.svg"
					loading="lazy" alt="" /> </a>
				<nav role="navigation" class="nav-menu w-nav-menu">
					<i class="fas fa-bars ms-1"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbarResponsive">
					<c:if test="${sessionScope.login != null }">
						<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
							<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="/Board/list">Board</a></li>
							<li class="nav-item"><a class="nav-link" href="/Cook/CookList">Recipes</a></li>
							<li class="nav-item"><a class="nav-link" href="/Cook/CookSearch">Search</a></li>
							<li class="nav-item"><a class="nav-link" href = "/Member/MyPage">MyPage</a></li>
						</ul>
					</c:if>
					<c:if test="${sessionScope.login == null }">
						<ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
							<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="/Member/joinform">Join</a></li>
						</ul>
					</c:if>
					</div>
					
					<%-- <c:if test="${sessionScope.login != null }">
				<a href = "/Member/MyPage" style="text-decoration: none;">MyPage</a> | 
				<a href = "/Login/logout" style="text-decoration: none;">Logout</a> |
				<a href = "/Board/list" style="text-decoration: none;">Board</a> | 
				<a href = "/Cook/CookSearch" style="text-decoration: none;">Search</a> |
				<a href = "/Cook/CookList" style="text-decoration: none;">Cook</a> | 
			</c:if>
			<c:if test="${sessionScope.login == null }">
				<a href = "/Login/loginform" style="text-decoration: none;">Login</a> | 
				<a href = "/Member/joinform" style="text-decoration: none;">Join</a> | 
			</c:if>
			<a href = "/MyHome/Member/MyPage.jsp" style="text-decoration: none;">MyPage</a> | 
			<a href = "/MyHome/Login/Logout.jsp" style="text-decoration: none;">Logout</a> | 
			
			<a href = "/MyHome/Login/LoginForm.jsp" style="text-decoration: none;">Login</a> | 
			<a href = "/MyHome/Member/JoinForm.jsp" style="text-decoration: none;">Join</a> | 
			
			
			<a href = "/" style="text-decoration: none;">Home</a> --%>
<style>
ul {
	margin: 0;
	padding: 5;
}

li {
	display: inline;

}

li a {
	margin: 0;
	padding: 5px;
}

li a.current {
	background-color: pink;
	color: black;
}

li a:hover:not(.current) {
	background-color: #de6972;
	color: white;
}

.recipe-page-main {
text-align: center;
display: inline-block;
justify-content: center;
width: 1200px;
height:
}
:focus {
	outline: none;
}
table.type10 {
	border-collapse: separate;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	margin: 20px 10px;
	text-align: center;
	background-color: white;
}

table.type10 thead th {
	width: 700px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #341d08;
	margin: 20px 10px;
}

table.type10 tbody th {
	width: 700px;
	padding: 10px;
	
}

table.type10 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
}

table.type10 .even {
	background-color: rgba(244, 241, 228, 0.3);
}
</style>

<script id="jetboost-script" type="text/javascript">
	window.JETBOOST_SITE_ID = "ckiqnk4n9kjat0783wdu3suu9";
	(function() {
		d = document;
		s = d.createElement("script");
		s.src = "https://cdn.jetboost.io/jetboost.js";
		s.async = 1;
		d.getElementsByTagName("head")[0].appendChild(s);
	})();
</script>
<style>
ol {
	counter-reset: myCounter;
}

ol li {
	list-style: none;
}

ol li:nth-child(even) {
	background-color: rgba(244, 241, 228, 0.3);
}

ol li:before {
	counter-increment: myCounter;
	content: counter(myCounter);
	color: black;
	display: inline-block;
	width: 40px;
	font-size: 32px;
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 auto;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
}
</style>

					<c:if test="${sessionScope.login != null }">
					<a href="/Login/logout" class="button collection-item w-button">Logout</a>
					</c:if>
					<c:if test="${sessionScope.login == null }">
					<a href="/Login/loginform" class="button collection-item w-button">Login</a>
					</c:if>
					
				</nav>
				<div class="menu-button w-nav-button">
					<div class="w-icon-nav-menu"></div>
				</div>
			</div>
		</div>
	<script
		src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=5fc5ce7399c0fc9d1a085e12"
		type="text/javascript"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://assets.website-files.com/5fc5ce7399c0fc9d1a085e12/js/webflow.7718cb37c.js"
		type="text/javascript"></script>
</body>
</html>