<%@page import="yuhan.mvc.cook.dao.CookDao"%>
<%@page import="yuhan.mvc.cook.dto.CookDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    CookDao dao = new CookDao();
 
    String strPg = request.getParameter("pg"); //list.jsp?pg=?
 
    int rowSize = 10; //한페이지에 보여줄 글의 수
    int pg = 1; //페이지 , list.jsp로 넘어온 경우 , 초기값 =1
   
    if(strPg != null){ //list.jsp?pg=2
        pg = Integer.parseInt(strPg); //.저장
    }
   
   
    int from = (pg * rowSize) - (rowSize-1); //(1*10)-(10-1)=10-9=1 //from
    int to=(pg * rowSize); //(1*10) = 10 //to
 
    ArrayList<CookDto> list = dao.CookList(from,to);
   
    int total = dao.getTotal(); //총 게시물 수
    int allPage = (int) Math.ceil(total/(double)rowSize); //페이지수
    //int totalPage = total/rowSize + (total%rowSize==0?0:1);
    int block = 10; //한페이지에 보여줄  범위 << [1] [2] [3] [4] [5] [6] [7] [8] [9] [10] >>
   
    //System.out.println("전체 페이지수 : "+allPage);
    //System.out.println("현제 페이지 : "+ strPg);
    //System.out.println("ceil:"+Math.ceil(total/rowSize));
    //out.println("list="+list);
   
    int fromPage = ((pg-1)/block*block)+1;  //보여줄 페이지의 시작
    int toPage = ((pg-1)/block*block)+block; //보여줄 페이지의 끝
    if(toPage> allPage){ // 예) 20>17
        toPage = allPage;
    }
   
    //System.out.println("페이지시작 : "+fromPage+ " / 페이지 끝 :"+toPage);    
 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
</head>
<body>
<jsp:include page="../Layout/Header.jsp"/>
<section class="section wf-section">
			 <div class="container jetboost-favorites-list-v7re w-container">
				<div class="w-layout-grid recipe-page-wrapper">
					<div class="recipe-page-main">
						<h1 class="recipe-page-heading">Recipe</h1>
						<div class="page-meal-type-block">
							<div class="meal-type-line"></div>
						</div>
						<div class="relative"> 
<table class="type10">
								<thead>
									<tr>
										<th scope="cols">번호</th>
										<th scope="cols">제목</th>
										<th scope="cols">이름</th>
										<th scope="cols">날짜</th>
									</tr>
								</thead>
								<tbody>
								<%
    for(int i=0;i<list.size();i++){
        CookDto b = list.get(i);
%>
      <tr>
        <td><%=b.getNo()%></td>
        <td><a href="CookStepList?cook_no=<%=b.getNo()%>"><%=b.getName()%></a></td>
        <td><%=b.getWriter()%></td>
        <td><%=b.getC_date()%></td>
    </tr>
<%
    }
%>
</table>
<%-- <c:forEach items="${CookList}" var="dto">
<tr>
<td>${dto.no}</td>
<td><a href = "CookStepList?cook_no=${dto.no}">${dto.name}</a></td>
<td>${dto.writer}</td>
<td>${dto.love}</td>
<td>${dto.c_date}</td>
</tr>
</c:forEach> --%>
<center>
<table width="600">
<tr>
    <td align="center">
        <%
            if(pg>block){ //처음, 이전 링크
        %>
                [<a href="/Cook/CookList?pg=1">◀◀</a>]
                [<a href="/Cook/CookList?pg=<%=fromPage-1%>">◀</a>]    
        <%     
            }else{
        %>             
                [<span style="color:gray">◀◀</span>]   
                [<span style="color:gray">◀</span>]
        <%
            }
        %>
        <%
            for(int i=fromPage; i<=toPage; i++){
                if(i==pg){
        %>         
                    [<%=i%>]
        <%     
                }else{
        %>
                    [<a href="/Cook/CookList?pg=<%=i%>"><%=i%></a>]
        <%
                }
            }
       
        %>
        <%
            if(toPage<allPage){ //다음, 이후 링크
        %>
                [<a href="/Cook/CookList?pg=<%=toPage+1%>">▶</a>]
                [<a href="/Cook/CookList?pg=<%=allPage%>">▶▶</a>]           
        <%     
            }else{
        %>                         
                [<span style="color:black">▶</span>]
                [<span style="color:black">▶▶</span>]
        <%
            }
        %>  
    </td>
</tr>
</table>
</center>
</div>				
						</div>
						</div>
					</div>
					
					
</section>


<jsp:include page="../Layout/Footer.jsp"/>
</body>
</html>