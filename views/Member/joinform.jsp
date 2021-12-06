<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<script>
	function checkJoin(){
		if(document.join.id.value == ""){
			alert("아이디를 입력하십시오!");
		}else if(document.join.password.value == ""){
			alert("비밀번호를 입력하십시오!");
		}else if(document.join.repw.value == ""){
			alert("비밀번호확인을 입력하십시오!");
		}else if(document.join.name.value == ""){
			alert("이름을 입력하십시오!");
		}else if(document.join.email.value == ""){
			alert("이메일을 입력하십시오!");
		}else if(document.join.tel1.value == ""){
			alert("전화번호를 입력하십시오!");
		}else if(document.join.tel2.value == ""){
			alert("전화번호를 입력하십시오!");
		}else if(document.join.tel3.value == ""){
			alert("전화번호를 입력하십시오!");
		}else if(document.join.password.value != document.join.repw.value){
			alert("비밀번호가 일치하지 않습니다.");
		}else{
			document.join.submit();
		}
	}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
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

.selectBox2 * { box-sizing: border-box; }
.selectBox2 {
  position: relative;
  width: 150px;
  height: 50px;
  border-radius: 4px;
  border: 2px solid lightcoral;
  background: url('https://freepikpsd.com/media/2019/10/down-arrow-icon-png-7-Transparent-Images.png') calc(100% - 7px) center no-repeat;
  background-size: 20px;
  cursor: pointer;
}

.selectBox2:after {
  content: '';
  display: block; 
  width: 2px;
  height: 100%; 
  position: absolute; 
  top: 0; 
  right: 35px;
  background: lightcoral;
}

.selectBox2 .label {
  display: flex;
  align-items: center;
  width: inherit;
  height: inherit;
  border: 0 none;
  outline: 0 none;
  padding-left: 15px;
  background: transparent;
  cursor: pointer;
}

.selectBox2 .optionList {
  position: absolute; 
  top: 28px;
  left: 0;
  width: 100%;
  background: lightcoral;
  color: #fff;
  list-style-type: none;
  padding: 0;
  border-radius: 6px;
  overflow: hidden;
  max-height: 0;
  transition: .3s ease-in;
}

.selectBox2.active .optionList {
  max-height: 500px;
}

.selectBox2 .optionItem {
  border-bottom: 1px dashed rgb(0, 0, 0);
  padding: 5px 15px 5px;
  transition: .1s;
}

.selectBox2 .optionItem:hover {
  background: rgb(0, 0, 0);
}

.selectBox2 .optionItem:last-child {
  border-bottom: 0 none;
}

.selectBox2 .optionList::-webkit-scrollbar {width: 6px;}
.selectBox2 .optionList::-webkit-scrollbar-track {background: transparent; }
.selectBox2 .optionList::-webkit-scrollbar-thumb {background: #303030; border-radius: 45px;}
.selectBox2 .optionList::-webkit-scrollbar-thumb:hover {background: #303030;}

</style>
<%@ include file ="../Layout/Header.jsp" %>
<form action="CheckJoin" method="post" name = "join">
	<section class="section homepage-hero-section wf-section">
			    <div class="container w-container">
				<img
					src="https://assets.website-files.com/5fc5ce7399c0fc9d1a085e12/5fce9b52b645d0e6fd71b9ad_icon.svg"
					loading="lazy" alt="" class="homepage-hero-icon" />
				<div>
					<h1>Join</h1>
				</div>
			</div>

			<div
				class="jetboost-list-wrapper-empty-2rx2 jetboost-list-wrapper-empty-2nx1 jetboost-list-wrapper-empty-v3y2 jetboost-list-wrapper-empty-1dqj">
				<div class="collection-message">
					<div class="form-group">
	<div class="form-group">
	<input type="text" name = "id" class="form-style" placeholder="ID" id="logname" autocomplete="off" style = "color:black">
	</div>	
	<div class="form-group mt-2">
	<input type="password" name = "password" class="form-style" placeholder="Password" id="logpass" autocomplete="off" style = "color:black">
	</div>
	<div class="form-group mt-2">
	<input type="password" name = "repw" class="form-style" placeholder="Password" id="logpass" autocomplete="off" style = "color:black">
	</div>
	<div class="form-group mt-2">
	<input type="text" name = "name" class="form-style" placeholder="Name" id="logpass" autocomplete="off" style = "color:black">
	</div>
	<div class="form-group mt-2">
	<input type="text" name="email" class="form-style" placeholder="Email" id="logemail" autocomplete="off" style = "color:black">
	</div>	
	<div class="form-group mt-2">
	<select name = "tel1" class="selectBox2">
					<option value="010" selected="selected">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="019">019</option>
				</select>
				-<input type="text" style = "color:black" size = "5" maxlength="4" name = "tel2">
				-<input type="text" size = "5" maxlength="4" name = "tel3" style = "color:black">
	</div>	
	<br>
	<input type="button" value="Join" class="login-btn" onclick="javascript:checkJoin()">
	<br>
	<br>
	<input type="button" value="Reset" class="login-btn" onclick="document.join.reset()">
			</div>
					</div>
					</div>
					</section>	      				
	
	
</form>
<%@ include file = "../Layout/Footer.jsp" %>		






