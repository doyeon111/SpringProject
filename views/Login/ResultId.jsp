<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = (String)request.getAttribute("id");
%>    
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
</style>
<%@include file="../Layout/Header.jsp" %>
<section class="section wf-section">
			<div class="container jetboost-favorites-list-v7re w-container">
				<div class="w-layout-grid recipe-page-wrapper">
					<div class="recipe-page-main">
					<div class="relative"></div>
<%-- <div align="center">
	<table border="1">
		<tr>
			<th colspan="2">Find Result</th>
		</tr>
		<tr>
			<th>ID</th>
			<td>
				<%if(id != null) {
					out.print(id);
				  }else {
					out.print("결과 없음");  
				  }
				%>
			</td>
		</tr>
		<tr>
			<td align="right" colspan="2">
				<%if(id != null) {%>
					<button onclick="location.href = '/Login/loginform?id=<%=id %>'">Login</button>
				<%}else { %>
					<button onclick="location.href = '/Login/IDFindForm'">Login</button>
				<%} %>
				<button onclick="location.href = '/Login/PWFindForm<%=id != null ? "?id=" + id : "" %>'">PW찾기</button>
			</td>
		</tr>
	</table>
</div> --%>
<table class="type10">
 	<thead>
									<tr>
										<th scope="cols"><h2>아이디</h2></th>
									</tr>
								</thead>
								<tbody>
								<tr>
								<td><h2><%if(id != null) {
					out.print(id);
				  }else {
					out.print("결과 없음");  
				  }
				%></h2></td>
								</tr>
 	<tr>
 		<td colspan="4" align="right">
 			<%if(id != null) {%>
					<button class="login-btn" onclick="location.href = '/Login/loginform?id=<%=id %>'">Login</button>
				<%}else { %>
					<button class="login-btn" onclick="location.href = '/Login/IDFindForm'">Login</button>
				<%} %>
 			<!-- <input type="button" value = "수정" class="button collection-item w-button" onclick="location.href = '/Member/UpdateForm'">
 			<input type="button" value = "회원탈퇴"  class="button collection-item w-button" onclick="location.href = '/Member/DeleteForm'"> -->
 		</td>
 	</tr>
 </table>
 </div>
 </div>
 </div>
 </section>
<%@include file="../Layout/Footer.jsp" %>















