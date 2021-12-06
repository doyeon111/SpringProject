<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	boolean check = false;
	if(id == null){
		Cookie[] cks = request.getCookies();	
		if(cks != null){
			for(Cookie ck : cks){
				if(ck.getName().equals("ckid")){
					id = ck.getValue();
					check = true;
					break;
				}
			}
		}	
		if(id == null){
			id = "";
		}
	}	
%>   

<script type="text/javascript">
	function check(){
		if(document.login.id.value == ""){
			alert("아이디를 입력하십시오!!!");
		}else if(document.login.password.value == ""){
			alert("비밀번호를 입력하십시오!!!");
		}else{
			document.login.submit();
		}
	}
</script>

<style type="text/css">
a {
	text-decoration: none;
}

h3 {
	font-size: 15px;
}

input {
	color: black;
}

#login_ss {
	display: flex;
	justify-content: space-between;
	padding-right: 50px;
	padding-left: 50px;
}

.linear-button {
	width: 100%;
}

.login-btn {
  background: #45aba6;
  padding: 11px 50px;
  border-color: #45aba6;
  color: #fff;
  text-align: center;
  margin: 0 auto;
  font-size: 20px;
  border: 1px solid #45aba6;
  border-radius: 44px;
  width: 100%;
  height: 56px;
  cursor: pointer;
}




</style>

<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!-- <link rel="stylesheet" href="../resources/movie/css/main.css" />
		<noscript>
		<link rel="stylesheet" href="../resources/movie/assets/css/noscript.css" />
		</noscript> -->
		<!-- <link rel="stylesheet" type="text/css" href="../resources/movie/css/login.css"> -->
		<!-- <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
		<link rel='stylesheet' href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'>
		<link rel="stylesheet" href="../resources/login/css/login.css"> -->
<%@ include file="../Layout/Header.jsp" %>

<div align="center">
	 <form action="/Login/CheckLogin" method="post" name = "login"> 
		<!-- <form action="CheckLogin" method="post" name = "login">  -->
		  <%-- <table id = "border" style="border-spacing: 0px;">
			<tr>
				<th id = "border">ID</th>
				<td id = "border"><input type="text" name = "id" value = "<%=id %>"></td>
			</tr>
			<tr>
				<th id = "border">PW</th>
				<td id = "border"><input type="password" name = "password"></td>
			</tr>
			<tr>
				<td colspan="2" align="right" id = "border">
					<%if(check) {%>
						<input type="checkbox" value = "true" name = "ckid" checked="checked">
					<%}else { %>
						<input type="checkbox" value = "true" name = "ckid">
					<%} %>
					<!-- <font size="1">아이디기억하기</font> -->
					<input type="button" value="Login" onclick="javascript:check()">
					<input type="button" value="Cancle" onclick="document.login.reset()">
				</td>
			</tr>
		</table> --%>  
       <%--  <div class="idForm">
        <input type="text" class="id" name = "id" placeholder="ID" value = "<%=id %>">
      </div>
      <div class="passForm">
        <input type="password" class="pw" name = "password" placeholder="PW">
      </div>
      <input type="button" class = "btn" value="Login" onclick="javascript:check()">
      <input type="button" class = "btn" value= "취소" onclick="document.login.reset()">
      <!-- <button type="button" class="btn" value="Login" onclick="javascript:check()">
        로그인
      </button> -->
	</form>
      <div class="bottomText">
         <a href = "IDFindForm">ID찾기</a>
      </div> --%>  
	 <!-- </form> -->
	 <%-- <div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<!-- <h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6> -->
			          	<!-- <input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
			          	<label for="reg-log"></label> -->
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3">로그인</h4>
											<div class="form-group">
												<input type="text" name = "id" class="form-style" placeholder="ID" id="id" autocomplete="off" value = "<%=id %>">
												<!-- <i class="input-icon uil uil-at"></i> -->
											</div>	
											<div class="form-group mt-2">
												<input type="password" name = "password" class="form-style" placeholder="Password" id="logpass" autocomplete="off">
												<!-- <i class="input-icon uil uil-lock-alt"></i> -->
											</div>
											<input type="button" value="Login" onclick="javascript:check()">
                            				<p class="mb-0 mt-4 text-center"><a href="IDFindForm" class="link">아이디 찾기</a></p>
				      					</div>
			      					</div>
			      				</div>
			      				</div>
			      				</div>
			      				</div>
			      				</div>
			      				</div>
			      				</div> --%>
			    <section class="section homepage-hero-section wf-section">
			    <div class="container w-container">
				<img
					src="https://assets.website-files.com/5fc5ce7399c0fc9d1a085e12/5fce9b52b645d0e6fd71b9ad_icon.svg"
					loading="lazy" alt="" class="homepage-hero-icon" />
				<div>
					<h1>Login</h1>
				</div>
			</div>

			<div
				class="jetboost-list-wrapper-empty-2rx2 jetboost-list-wrapper-empty-2nx1 jetboost-list-wrapper-empty-v3y2 jetboost-list-wrapper-empty-1dqj">
				<div class="collection-message">
					<div class="form-group">
					<input type="text" name = "id" class="form-style" style = "color:black" 
					placeholder="ID" id="id" autocomplete="off" value = "<%=id %>">
					</div>	
					<div class="form-group mt-2">
					<input type="password" name = "password" class="form-style" style = "color:black"
					placeholder="Password" id="logpass" autocomplete="off">
					<br><br>
					<input type="button" class="login-btn" value="로그인" onclick="javascript:check()"><br>
					<br> 
					<div id="login_ss">
					<a href="IDFindForm" class="search"><h3>아이디 찾기</h3></a> 
					<br>
					</div>
					</div>
					</div>
					</div>
					</section>
					</form>
					
</div>
<%@include file="../Layout/Footer.jsp" %>












