<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>핫딜 상품 등록 페이지</title>
<link rel="shortcut icon" href="resources/assets/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="resources/assets/img/icon.png">
</head>
<body>
	<c:import url="../common/menubar.jsp" />
	
	<!-- Breadcrumb area Start -->
	<section class="page-title-area bg-image ptb--80"
		data-bg-image="resources/assets/img/bg/page_title_bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-12 text-center">
					<h1 class="page-title">핫딜</h1>
					<ul class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li class="current"><span>핫딜 게시판</span></li>
						<li class="current"><span>상품 등록하기</span></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb area End -->
	
	<div class="main-container">
		<main class="site-main">	
			<div class="container-fluid no-left-padding no-right-padding page-content">
				<div class="container">
				
					<br><br>
					<h1>상품 등록하기</h1>
					<h5>상품 등록 방법에 대한 자세한 설명은 공지사항을 확인 해 주세요.</h5>
					<br><br><br>
					<form>
						<table id="insertTable">
							<tr>
								<th>글 제목(판매상품 이름)</th>
								<td><input type="text" placeholder="내용을 입력해주세요."/></td>
							</tr>
							<tr>
								<th>썸네일(판매상품 사진)</th>
								<td><a href="#"><img src="http://placehold.it/120x120" alt="Post"/></a>
									<input type="file" style="">
								</td>
							</tr>
							<tr>
								<th>할인 전 가격</th>
								<td><input type="text" placeholder="내용을 입력해주세요."/></td>
							</tr>
							<tr>
								<th>최종 판매 가격</th>
								<td><input type="text" placeholder="내용을 입력해주세요."/></td>
							</tr>
							<tr>
								<th>판매 수량</th>
								<td><input type="number" /></td>
							</tr>
							<tr>
								<th>상품 정보</th>
								<td><textarea rows="10" cols="100"></textarea></td>
							</tr>
							<tr>
								<th></th>
								<td><a href="#"><img src="http://placehold.it/120x120" alt="Post"/></a>
									<input type="file">
								</td>
							</tr>
							<tr>
								<th></th>	
								<td><button type="submit" style="width:30%; margin-left:20%;">등록하기</button><button style="width:30%; margin-left:10%">취소하기</button></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</main>
	</div>
	
	<c:import url="../common/footer.jsp"/>


	<!-- Global Overlay Start -->
	<div class="global-overlay"></div>
	<!-- Global Overlay End -->

	<!-- Global Overlay Start -->
	<a class="scroll-to-top" href=""><i class="la la-angle-double-up"></i></a>
	<!-- Global Overlay End -->
	<!-- Main Wrapper End -->
	
	
</body>
</html>