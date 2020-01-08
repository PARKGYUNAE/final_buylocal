<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h5>a{
		cursor:pointer;
		float:left;
	}
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>
	<br>
	
	<div class="main-container">
	
		<main class="site-main">

			<!-- Page Content -->
			<div class="container-fluid no-left-padding no-right-padding page-content blog-single post-nosidebar">
				<!-- Container -->
				<div class="container">
					<h3 align="center">REGISTER</h3>
					<div class="row">
						<!-- Content Area -->
						<div class="col-xl-12 col-lg-12 col-md-12 col-12 content-area">
							<article class="type-post">
								<div class="entry-content">
									<div class="post-image row">
										<figure class="col-sm-6">
											<!-- 일반 회원 가입 폼 페이지로 이동 -->
											<c:url var="userSignUp" value="userSignUp.do"/>
											<a href="${ userSignUp }"><img src="http://placehold.it/581x350" alt="일반 회원 가입" /></a>
											<figcaption>일반 회원</figcaption>
										</figure>
										<figure class="col-sm-6">
											<!-- 사업자 회원 가입 폼 페이지로 이동 -->
											<c:url var="sellerSignUp" value="sellerSignUp.do"/>
											<a href="${ sellerSignUp }"><img src="http://placehold.it/581x350" alt="사업자 회원 가입" /></a>
											<figcaption>사업자 회원</figcaption>
										</figure>
									</div>
								</div>
							</article>
							<!-- About Author -->
							<!-- About Author /- -->
							<!-- Related Post -->
							<!-- Related Post /- -->
							<!-- Comment Area -->
							<!-- Comment Area /- -->
						</div><!-- Content Area /- -->
					</div>
				</div><!-- Container /- -->
			</div><!-- Page Content /- -->
			
		</main>
		
	</div>
	</div>
</body>
</html>