<%@page import="yuhan.mvc.board.dao.BoardDao"%>
<%@page import="yuhan.mvc.board.dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    BoardDao dao = new BoardDao();
 
    String strPg = request.getParameter("pg"); //list.jsp?pg=?
 
    int rowSize = 5; //한페이지에 보여줄 글의 수
    int pg = 1; //페이지 , list.jsp로 넘어온 경우 , 초기값 =1
   
    if(strPg != null){ //list.jsp?pg=2
        pg = Integer.parseInt(strPg); //.저장
    }
   
   
    int from = (pg * rowSize) - (rowSize-1); //(1*10)-(10-1)=10-9=1 //from
    int to=(pg * rowSize); //(1*10) = 10 //to
 
    ArrayList<BoardDto> list = dao.list(from,to);
   
    int total = dao.getTotal(); //총 게시물 수
    int allPage = (int) Math.ceil(total/(double)rowSize); //페이지수
    //int totalPage = total/rowSize + (total%rowSize==0?0:1);
    int block = 2; //한페이지에 보여줄  범위 << [1] [2] [3] [4] [5] [6] [7] [8] [9] [10] >>
   
   
   
    System.out.println("전체 페이지수 : "+allPage);
    System.out.println("현제 페이지 : "+ strPg);
    //System.out.println("ceil:"+Math.ceil(total/rowSize));
    //out.println("list="+list);
   
    int fromPage = ((pg-1)/block*block)+1;  //보여줄 페이지의 시작
    int toPage = ((pg-1)/block*block)+block; //보여줄 페이지의 끝
    if(toPage> allPage){ // 예) 20>17
        toPage = allPage;
    }
   
    System.out.println("페이지시작 : "+fromPage+ " / 페이지 끝 :"+toPage);    
 
%>

<!DOCTYPE html>
<html data-wf-domain="cms-recipe-directory.webflow.io"
	data-wf-page="5fc5ce7399c0fc63a4085e14"
	data-wf-site="5fc5ce7399c0fc9d1a085e12" data-wf-status="1">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta content="Webflow" name="generator" />
<link rel = "stylesheet" href="css/bootstrap.css">
</head>
<body>
<jsp:include page="../Layout/Header.jsp"/>  

		
<%-- <table width="1000" cellpadding="1" cellspacing="1" border="2" id="table">
<tr>
<td>번호</td>
<td>이름</td>
<td>제목</td>
<td>날짜</td>
</tr>
<%
    for(int i=0;i<list.size();i++){
        BoardDto b = list.get(i);
%>
   
    <tr>
        <td><%=b.getB_no()%></td>
        <td><%=b.getB_name()%></td>
        <td><a href="content_view?b_no=<%=b.getB_no()%>"><%=b.getB_subject()%></a></td>
        <td><%=b.getB_date()%></td>
    </tr>
<%
    }
%> 


<c:forEach items="${list}" var="dto">
<tr>
<td>${dto.b_no}</td>
<td>${dto.b_name}</td>
<td>
<c:forEach begin="1" end="${dto.b_no}">-</c:forEach>
<a href="content_view?b_no=${dto.b_no}">${dto.b_subject}</a></td>
<td>${dto.b_date}</td>
</tr>
</c:forEach>

<tr>
<td colspan="10"> <a href="write_view">글작성</a></td>
</tr>
</table>  --%>

<section class="section wf-section">
			 <div class="container jetboost-favorites-list-v7re w-container">
				<div class="w-layout-grid recipe-page-wrapper">
					<div class="recipe-page-main">
						<h1 class="recipe-page-heading">Board</h1>
						<div class="page-meal-type-block">
							<div class="meal-type-line"></div>
						</div>
						<div class="relative">
						<table class="type10">
								<thead>
									<tr>
										<th scope="cols">번호</th>
										<th scope="cols">이름</th>
										<th scope="cols">제목</th>
										<th scope="cols">날짜</th>
									</tr>
								</thead>
								<tbody>
								<%
    								for(int i=0;i<list.size();i++){
        							BoardDto b = list.get(i);
								%>
    							<tr>
        						<td><%=b.getB_no()%></td>
        						<td><%=b.getB_name()%></td>
        						<td><a href="content_view?b_no=<%=b.getB_no()%>"><%=b.getB_subject()%></a></td>
        						<td><%=b.getB_date()%></td>
    							</tr>
								<%
    								}
								%> 	
								</tbody>
								
							</table>
							<a href="write_view" class="button collection-item w-button">글 작성</a>
							<center>
							<table>
							<tr>
    						<td>
        					<%
            				if(pg>block){ //처음, 이전 링크
        					%>
                			[<a href="/Board/list?pg=1">◀◀</a>]
                			[<a href="/Board/list?pg=<%=fromPage-1%>">◀</a>]    
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
                    			[<a href="/Board/list?pg=<%=i%>"><%=i%></a>]
        					<%
                					}
            					}
       
        					%>
        					<%
            					if(toPage<allPage){ //다음, 이후 링크
       						%>
                				[<a href="/Board/list?pg=<%=toPage+1%>">▶</a>]
                				[<a href="/Board/list?pg=<%=allPage%>">▶▶</a>]           
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




<%-- <table width="1000">
<tr>
    <td align="center">
        <%
            if(pg>block){ //처음, 이전 링크
        %>
                [<a href="/Board/list?pg=1">◀◀</a>]
                [<a href="/Board/list?pg=<%=fromPage-1%>">◀</a>]    
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
                    [<a href="/Board/list?pg=<%=i%>"><%=i%></a>]
        <%
                }
            }
       
        %>
        <%
            if(toPage<allPage){ //다음, 이후 링크
        %>
                [<a href="/Board/list?pg=<%=toPage+1%>">▶</a>]
                [<a href="/Board/list?pg=<%=allPage%>">▶▶</a>]           
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
</table> --%>
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





