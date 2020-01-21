<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #container {
      width: 70%;
      margin: 0 auto;     /* 가로로 중앙에 배치 */
      padding-top: 10%;   /* 테두리와 내용 사이의 패딩 여백 */
    }
	#wrbtn {
		margin-left: 85%;
		padding-left: 10px;
		padding-right: 10px;
		padding-top: 5px;	
		padding-bottom: 5px;
		background: rgb(91, 185, 223);
		color:white;
		font-weight: bold;
		border: 1px;

	}
	#searchPlace {
		margin-left: 30%;
	}
	#visit {
		font-weight: bold;
	}
	#cookies {
		margin-left: 10%;
		font-size: 1.2em;
	}
	#subwrap {
		background: rgba(192, 185, 185,0.2);
		padding: 1%;
	}
	#reset {
		padding: 1%;
		margin-left: 90%;
		background: white;
		color:black;
		font-weight: bold;
		border: 1px;
	}




   </style>
</head>
<body>
<c:import url="../common/menubar.jsp" />
<br><br><br>
	<!-- 나눔게시판 form  -->
	<h1 align="center">나눔게시판</h1>
	  <div id="container">
		  <div id="subwrap">
			<span id="visit">최근방문한게시글<a id="cookies" href="#">노트북팝니다</a><img src="resources/assets/images/image98.png" width="25" height="25"></span>
	<!-- 쿠기배열영역  --> 
	<button id="reset">초기화</button>
</div>
	<br>
	<button id="wrbtn" onclick="location.href='shareInsert.do';">글쓰기</button>
	<table class="table table-striped table-bordered table-hover">
		
		<tr>
			<td>번호</td>
			<td width="250">제목</td>
			<td>작성자</td>
			<td width="100">작성일</td>
			<td>조회수</td>
			<td>댓글수<td>
			</tr>
		
			 		<c:forEach var="sb" items="${list }"> 
			<tr>
			<td>${sb.sbNo }</td>		<!--글번호  -->
			<td>					<!-- 제목  -->
				<%-- <c:if test="${!empty loginUser }"> --%>
					<c:url var="sbdetail" value="sbdetail.do">
						<c:param name="sbNo" value="${sb.sbNo }"/>
						<c:param name="page" value="${pi.currentPage }"/>
					</c:url>
					<a href="${sbdetail }">${sb.sbTitle }</a>
				<%-- </c:if> --%>
				
				<%-- <c:if test="${empty loginUser }">
					${sb.sbTitle }
				</c:if> --%>
				
			</td>
			<td>${sb.cName }</td> <!--작성자  -->
			<td>${sb.sbDate}</td>   <!--작성일  -->
			<td>${sb.sbView }</td>   <!--조회수  -->
			<td>0</td> <!-- 댓글수  -->
			
			<%-- <c:forEach var="r" items=${ rlist }>
				<td>${r.rCount }</td>      <!--댓글수  -->
			</c:forEach> --%>
		</tr>
	</c:forEach>
	
	<!-- 페이징처리 작업  -->
	
</table>
<span id="searchArea">
		<button>버튼</button>
		<select id="searchCondition" name="searchCondition">
			<option>전체</option>
			<option>작성자</option>
			<option>제목</option>
		</select>
		<input type="search">
		<img src="resources/assets/images/—Pngtree—magnifying glass for commercial elements_4095332.png" alt="그림없음" width="60" height="60">
	</span>
	<span id="searchPlace">
		<button>버튼</button>
		<select id="categorl" name="categorl">
			<option>전체</option>
			<option>팝니다</option>
			<option>삽니다</option>
			<option>나눕니다</option>
			<option>정보공유</option>
			<option>기타</option>
		</select>
		<input type="search">
		<img src="resources/assets/images/—Pngtree—magnifying glass for commercial elements_4095332.png" alt="그림없음" width="60" height="60">
	</span>
	
	
	
 <nav class="pagination-wrap">
                                <ul class="pagination">
                                    <li><span class="page-number current">1</span></li>
                                    <li><a href="#" class="page-number">2</a></li>
                                    <li><span class="dot"></span></li>
                                    <li><span class="dot"></span></li>
                                    <li><span class="dot"></span></li>
                                    <li><a href="#" class="page-number">16</a></li>
                                </ul>
                            </nav>
                            
</body>
</html>