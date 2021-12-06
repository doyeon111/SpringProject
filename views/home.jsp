<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
 
<html>
<head>
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
</head>
<body>
<%@include file="Layout/Header.jsp" %>

<!-- Main -->
<section class="section homepage-hero-section wf-section">
			<div class="container w-container">
				<img
					src="https://assets.website-files.com/5fc5ce7399c0fc9d1a085e12/5fce9b52b645d0e6fd71b9ad_icon.svg"
					loading="lazy" alt="" class="homepage-hero-icon" />
				<div>
					<h1>My Recipe</h1>
				</div>
				<div class="subtitle">나만의 레시피</div>
			</div>
</section>
<c:if test="${sessionScope.login == null }">
<section class="section wf-section">
			<div class="container w-container">
				<div
					class="jetboost-list-wrapper-2rx2 jetboost-list-wrapper-2nx1 jetboost-list-wrapper-v3y2 jetboost-list-wrapper-1dqj jetboost-list-wrapper-v7re w-dyn-list">
					<div role="list" class="recipes-list w-dyn-items">
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no1" class="card w-inline-block"><div
									class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2021/05/25/4acdd303a43473342238e2fa5db435741.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2021/05/25/4acdd303a43473342238e2fa5db435741.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">볶음밥</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">달걀 볶음밥</h3></a>
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="breakfast-quiche" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no2"
								class="card w-inline-block">
								<div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2019/05/25/39ac1e73e998e88da300d38663242f0a1.jpg"
										alt="이미지"
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2019/05/25/39ac1e73e998e88da300d38663242f0a1.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">구이</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">새송이 버섯 간장 버터구이</h3>
							</a>
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="ham-and-cheese-scramble" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no3" class="card w-inline-block">
								<div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2021/04/04/067529ead0761af2a8dbe1106e21bcd91.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2021/04/04/067529ead0761af2a8dbe1106e21bcd91.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">조림</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">팽이버섯 조림</h3>
							</a>
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="raspberry-pancakes" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no4"
								class="card w-inline-block"><div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/c37e0db0e0386d453eda2be45e26b9c01.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/c37e0db0e0386d453eda2be45e26b9c01.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">조림</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">닭봉 간장조림</h3></a>							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="banana-brioche-french-toast" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no5"
								class="card w-inline-block"><div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2020/10/20/72737d4f3fbd6376f9fbfdb00275e40e1.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2020/10/20/72737d4f3fbd6376f9fbfdb00275e40e1.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">밑반찬</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">매운어묵</h3></a>							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="bacon-mushroom-omelet" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no6"
								class="card w-inline-block"><div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2020/05/18/2cad62498784efd2b97c0f80abebfcff1.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2020/05/18/2cad62498784efd2b97c0f80abebfcff1.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">강정</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">소세지 강정</h3></a>						
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="sausage-stuffed-peppers" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no7" class="card w-inline-block"><div
									class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2016/02/16/d74c6731fce3dc72c5579b24083185f11.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2016/02/16/d74c6731fce3dc72c5579b24083185f11.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">조림</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">베이컨 간장조림</h3></a>
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="beef-thai-curry" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no8"
								class="card w-inline-block"><div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2015/04/22/a673e92121f268ea47ea5212bcbde4891.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2015/04/22/a673e92121f268ea47ea5212bcbde4891.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">밑반찬</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">고추된장박이</h3></a>							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="shrimp-angel-hair-pasta" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no9"
								class="card w-inline-block"><div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2017/10/22/3211f299a02729bc2d05649ceec734771.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2017/10/22/3211f299a02729bc2d05649ceec734771.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">덮밥</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">대패덮밥</h3></a>						
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="easy-chicken-alfredo-penne" />
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</section>
	</c:if> 
	
	<c:if test="${sessionScope.login != null }">
	<!--<div class="form-block w-form">
			<form id="wf-form-Filter" name="wf-form-Filter" data-name="Filter">
				
				 <div class="filters-block">
					<div data-hover="false" data-delay="0"
						data-w-id="8dc4892a-c7ac-4186-4651-3b29ae88b511"
						class="dropdown w-dropdown">
						<div class="filter-toggle w-dropdown-toggle">
							<div>Main Ingredient</div>
						</div>
						<nav
							class="filter-dropdown-list jetboost-filter-2nx1 w-dropdown-list">
							<a href="#" class="filter-button jetboost-filter-active w-button">Sweets</a>
							<a href="#" class="filter-button w-button">Beef</a> <a href="#"
								class="filter-button w-button">Seafood</a> <a href="#"
								class="filter-button w-button">Eggs</a> <a href="#"
								class="filter-button w-button">Vegetables</a> <a href="#"
								class="filter-button w-button">Chicken</a> <a href="#"
								class="filter-button w-button">Cheese</a> <a href="#"
								class="filter-button w-button">Pork</a> <a href="#"
								class="filter-button w-button">Bread</a>
						</nav>
					</div>
					<div data-hover="false" data-delay="0"
						data-w-id="01eda2c6-e211-771b-e689-38dabf38c8f6"
						class="dropdown w-dropdown">
						<div class="filter-toggle w-dropdown-toggle">
							<div>Meal type</div>
						</div>
						<nav
							class="filter-dropdown-list jetboost-filter-1dqj w-dropdown-list">
							<a href="#" class="filter-button jetboost-filter-active w-button">Breakfast</a>
							<a href="#" class="filter-button w-button">Main Dish</a> <a
								href="#" class="filter-button w-button">Side Dish</a> <a
								href="#" class="filter-button w-button">Dessert</a>
						</nav>
					</div>
					<div data-hover="false" data-delay="0"
						data-w-id="973b987b-a9fc-e73d-e5af-18b656223e09"
						class="dropdown w-dropdown">
						<div class="filter-toggle w-dropdown-toggle">
							<div>Salad &amp; Bread</div>
						</div>
						<nav
							style="-webkit-transform: translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 30px, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); opacity: 0; display: none"
							class="filter-dropdown-list w-dropdown-list">
							<div class="jetboost-filter-v3y2 w-dyn-list">
								<div role="list" class="w-dyn-items">
									<div role="listitem" class="w-dyn-item">
										<a href="#"
											class="filter-button jetboost-filter-active w-button">Dairy-Free</a>
										<div class="w-embed">
											<input type="hidden" class="jetboost-list-item"
												value="dairy-free" />
										</div>
									</div>
									<div role="listitem" class="w-dyn-item">
										<a href="#"
											class="filter-button jetboost-filter-active w-button">Nut-Free</a>
										<div class="w-embed">
											<input type="hidden" class="jetboost-list-item"
												value="nut-free" />
										</div>
									</div>
									<div role="listitem" class="w-dyn-item">
										<a href="#"
											class="filter-button jetboost-filter-active w-button">Gluten-Free</a>
										<div class="w-embed">
											<input type="hidden" class="jetboost-list-item"
												value="gluten-free" />
										</div>
									</div>
									<div role="listitem" class="w-dyn-item">
										<a href="#"
											class="filter-button jetboost-filter-active w-button">Vegetarian</a>
										<div class="w-embed">
											<input type="hidden" class="jetboost-list-item"
												value="vegetarian" />
										</div>
									</div>
								</div>
							</div>
						</nav>
					</div>
				</div> -->
				<!-- <div class="reset-filters-block">
					<div class="meal-type-line"></div>
					<a href="/"
						class="clear-filter-button jetboost-list-search-reset-2rx2 jetboost-filter-none-2nx1 jetboost-filter-none-v3y2 jetboost-filter-none-1dqj">Reset
						filters</a>
					<div class="meal-type-line last"></div>
				</div> -->
			</form>
		</div>
		<section class="section wf-section">
			<div class="container w-container">
				<div
					class="jetboost-list-wrapper-2rx2 jetboost-list-wrapper-2nx1 jetboost-list-wrapper-v3y2 jetboost-list-wrapper-1dqj jetboost-list-wrapper-v7re w-dyn-list">
					<div role="list" class="recipes-list w-dyn-items">
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no1" class="card w-inline-block"><div
									class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2021/05/25/4acdd303a43473342238e2fa5db435741.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2021/05/25/4acdd303a43473342238e2fa5db435741.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">볶음밥</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">달걀 볶음밥</h3></a>
							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="breakfast-quiche" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no2"
								class="card w-inline-block">
								<div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2019/05/25/39ac1e73e998e88da300d38663242f0a1.jpg"
										alt="이미지"
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2019/05/25/39ac1e73e998e88da300d38663242f0a1.jpg 1080w, https://assets.website-files.com/5fc5ce7399c0fc0080085e1a/5fc5ce7399c0fc244c085e4d_scrambled-egg-5764950_1280.jpeg 1280w"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">구이</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">새송이 버섯 간장 버터구이</h3>
							</a>
							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="ham-and-cheese-scramble" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no3" class="card w-inline-block">
								<div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2021/04/04/067529ead0761af2a8dbe1106e21bcd91.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2021/04/04/067529ead0761af2a8dbe1106e21bcd91.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">조림</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">팽이버섯 조림</h3>
							</a>
							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="raspberry-pancakes" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no4"
								class="card w-inline-block"><div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/c37e0db0e0386d453eda2be45e26b9c01.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/c37e0db0e0386d453eda2be45e26b9c01.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">조림</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">닭봉 간장조림</h3></a>
							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="banana-brioche-french-toast" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no5"
								class="card w-inline-block"><div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2020/10/20/72737d4f3fbd6376f9fbfdb00275e40e1.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2020/10/20/72737d4f3fbd6376f9fbfdb00275e40e1.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">밑반찬</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">매운어묵</h3></a>
							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="bacon-mushroom-omelet" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no6"
								class="card w-inline-block"><div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2020/05/18/2cad62498784efd2b97c0f80abebfcff1.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2020/05/18/2cad62498784efd2b97c0f80abebfcff1.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">강정</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">소세지 강정</h3></a>
							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="sausage-stuffed-peppers" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no7" class="card w-inline-block"><div
									class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2016/02/16/d74c6731fce3dc72c5579b24083185f11.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2016/02/16/d74c6731fce3dc72c5579b24083185f11.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">조림</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">베이컨 간장조림</h3></a>
							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="beef-thai-curry" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no8"
								class="card w-inline-block"><div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2015/04/22/a673e92121f268ea47ea5212bcbde4891.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2015/04/22/a673e92121f268ea47ea5212bcbde4891.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">밑반찬</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">고추된장박이</h3></a>
							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="shrimp-angel-hair-pasta" />
							</div>
						</div>
						<div data-w-id="2f81cc1c-2f23-9c6c-e51d-922bbd09555d"
							role="listitem" class="item w-dyn-item">
							<a href="/Movie/movie_no9"
								class="card w-inline-block"><div class="card-image-wrapper">
									<img loading="lazy"
										src="https://recipe1.ezmember.co.kr/cache/recipe/2017/10/22/3211f299a02729bc2d05649ceec734771.jpg"
										alt=""
										sizes="(max-width: 479px) 93vw, (max-width: 767px) 45vw, (max-width: 991px) 29vw, 27vw"
										srcset="https://recipe1.ezmember.co.kr/cache/recipe/2017/10/22/3211f299a02729bc2d05649ceec734771.jpg"
										class="recipe-card-image" />
									<div style="height: 0%" class="card-image-overlay"></div>
								</div>
								<div class="meal-type-block">
									<div class="meal-type-line"></div>
									<div class="meal-type-text">덮밥</div>
									<div class="meal-type-line"></div>
								</div>
								<h3 class="card-title">대패덮밥</h3></a>
							
							<div class="w-embed">
								<input type="hidden" class="jetboost-list-item"
									value="easy-chicken-alfredo-penne" />
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</section>
	</c:if> 
					
<br>
	<script
		src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=5fc5ce7399c0fc9d1a085e12"
		type="text/javascript"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://assets.website-files.com/5fc5ce7399c0fc9d1a085e12/js/webflow.7718cb37c.js"
		type="text/javascript"></script>
		
<%@include file="Layout/Footer.jsp" %>

</body>
</html>
 






 