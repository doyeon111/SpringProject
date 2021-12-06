<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<style>

button.btn{
  background: lightskyblue;
  color: white;
  border: 2px solid white;
  font-size: 20px;
  letter-spacing: 2px;
  padding: 15px 30px;
  text-transform: uppercase;
  cursor: pointer;
  display: inline-block;
  margin: 15px 30px;
/* animate and time the transitions*/
-webkit-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
  border-radius: 25px;
}

button.btn-2{
  overflow: hidden;
  position: relative;
}
button.btn-2:hover{
  color: black;
}

button.btn-2:after {
 content: '';
 position: absolute;
 z-index: -1;
 -webkit-transition: all 0.4s;
 -moz-transition: all 0.4s;
 transition: all 0.4s;
 width: 100%;
 height: 0;
 top: 0;
 left: 0;
 background: #fff;
}
button.btn-2:hover:after,
button.btn-2:active:after {
 height: 100%;
}

</style>
</head>
<body>
<jsp:include page="../Layout/Header.jsp"/> 
<section class="section wf-section">
	<form action="CookSearch" method="post" name = "name">
	<!-- <table>
		<tr>
			<td>재료 검색</td>
			<td><input type="text" name = "ingredient"></td>
		</tr>
		<tr>
		<td colspan="2" align="right">
				<button class="btn" type="submit"> 검색 </button>
		</td>
		</tr>
	</table>  -->
	<input type="text" class="search-field jetboost-list-search-input-2rx2 w-input" 
		maxlength="256" name="ingredient" data-name="Search" placeholder="재료를 입력하세요" id="Search" />
		<button class="btn btn-2" type="submit"> 검색 </button>
</form>
<!-- <div class="form-group row"> 
<label for="title" class="col-sm-2 col-form-label">두번째 재료</label> 
<div class="col-sm-10"> 
<input type="text" class="form-control" name="checkItem" placeholder="두번째 항목을 입력하세요."> 
</div> 
</div> 
<div class="form-group row"> 
<label for="title" class="col-sm-2 col-form-label">세번째 재료</label> 
<div class="col-sm-10"> 
<input type="text" class="form-control" name="checkItem" placeholder="세번째 항목을 입력하세요."> 
</div> 
</div> -->
<table class="type10">
								<thead>
									<tr>
										<th scope="cols">번호</th>
										<th scope="cols">제목</th>
										<th scope="cols">작성자</th>
										<th scope="cols">날짜</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${Cooklist}" var="dto">
							<tr>
						<td>${dto.no}</td>
						<td><a href = "CookStepList?cook_no=${dto.no}">${dto.name}</a></td>
						<td>${dto.writer}</td>
						<td>${dto.c_date}</td>
						</c:forEach>
						</table>
						</section>
<%-- <table width = "1500" cellpadding="1" cellspacing="1" border="2" id="table">
<tr>
<td>번호</td>
<td>제목</td>
<td>작성자</td>
<td>좋아요</td>
<td>날짜</td>
</tr>
<c:forEach items="${Cooklist}" var="dto">
<tr>
<td>${dto.no}</td>
<td><a href = "CookStepList?cook_no=${dto.no}">${dto.name}</a></td>
<td>${dto.writer}</td>
<td>${dto.love}</td>
<td>${dto.c_date}</td>

</c:forEach>
</table> --%>



<jsp:include page="../Layout/Footer.jsp"/>
</body>
</html>