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
	<c:import url="../common/menubar.jsp" />
	<br>
	
	<div class="main-container">
		
		<main class="site-main">	
		
			<!-- Page Content -->
			<div class="container-fluid no-left-padding no-right-padding page-content">
				<!-- container -->	
				<div align="center">
				<h1>핫딜</h1>
				</div>
				<hr>
				<h5><a style="margin-left:40%">한식</a></h5><h5><a style="margin-left:5%">중식</a></h5>
				<h5><a style="margin-left:5%">양식</a></h5><h5><a style="margin-left:5%">일식</a></h5>
				<br>
				<hr><br>
				
				<div class="container">
					<!-- Row -->
					<div class="row">
					<!-- Widget Area -->
						<div class="col-xs-6 col-sm-3 widget-area" >
							
							<!-- Widget : Categories -->
							<aside class="widget widget_categories text-center" >
								<h3 class="widget-title">Categories</h3>
								<ul>
									<li><a href="#" title="Nature">전체보기</a></li>
									<li><a href="#" title="Nature">식품류</a></li>
									<li><a href="#" title="Technology">비식품류</a></li>
									<li><a href="#" title="Travel">기타</a></li>
								</ul>
							</aside><!-- Widget : Categories /- -->
				
						</div><!-- Widget Area /- -->
						<!-- Content Area -->
						<div class="col-xs-6 col-sm-3 blog-masonry-box" >
							<div class="type-post">
								<div class="entry-cover">
									<div class="post-meta">
										<c:url var="hotDealDetail" value="hotDealDetail.do"/>
										<span class="byline"><a href="${hotDealDetail }" title="Indesign">상세정보보기</a></span>
										<span class="post-date"><a href="#">구매하기</a></span>
									</div>
									<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
								</div>
								<div class="entry-content">
									<div class="entry-header">	
										<span class="post-category"><a href="#" title="Lifestyle">Lifestyle</a></span>
										<h3 class="entry-title"><a href="#" title="Trendy Summer Fashion">Trendy Summer Fashion</a></h3>
									</div>
									<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses...</p>
									<a href="#" title="Read More">Read More</a>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3 blog-masonry-box">
							<div class="type-post">
									<div class="entry-cover">
										<div class="post-meta">
											<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
											<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
										</div>
										<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
									</div>
									<div class="entry-content">
										<div class="entry-header">	
											<span class="post-category"><a href="#" title="Lifestyle">Lifestyle</a></span>
											<h3 class="entry-title"><a href="#" title="Trendy Summer Fashion">Trendy Summer Fashion</a></h3>
										</div>
										<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses...</p>
										<a href="#" title="Read More">Read More</a>
									</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3 blog-masonry-box">
							<div class="type-post">
								<div class="entry-cover">
									<div class="post-meta">
										<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
										<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
									</div>
									<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
								</div>
								<div class="entry-content">
									<div class="entry-header">	
										<span class="post-category"><a href="#" title="Lifestyle">Lifestyle</a></span>
										<h3 class="entry-title"><a href="#" title="Trendy Summer Fashion">Trendy Summer Fashion</a></h3>
									</div>
									<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses...</p>
									<a href="#" title="Read More">Read More</a>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3 blog-masonry-box">
						</div>
						<div class="col-xs-6 col-sm-3 blog-masonry-box">
							<div class="type-post">
								<div class="entry-cover">
									<div class="post-meta">
										<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
										<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
									</div>
									<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
								</div>
								<div class="entry-content">
									<div class="entry-header">	
										<span class="post-category"><a href="#" title="Lifestyle">Lifestyle</a></span>
										<h3 class="entry-title"><a href="#" title="Trendy Summer Fashion">Trendy Summer Fashion</a></h3>
									</div>
									<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses...</p>
									<a href="#" title="Read More">Read More</a>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3 blog-masonry-box">
							<div class="type-post">
								<div class="entry-cover">
									<div class="post-meta">
										<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
										<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
									</div>
									<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
								</div>
								<div class="entry-content">
									<div class="entry-header">	
										<span class="post-category"><a href="#" title="Lifestyle">Lifestyle</a></span>
										<h3 class="entry-title"><a href="#" title="Trendy Summer Fashion">Trendy Summer Fashion</a></h3>
									</div>
									<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses...</p>
									<a href="#" title="Read More">Read More</a>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3 blog-masonry-box">
							<div class="type-post">
								<div class="entry-cover">
									<div class="post-meta">
										<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
										<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
									</div>
									<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
								</div>
								<div class="entry-content">
									<div class="entry-header">	
										<span class="post-category"><a href="#" title="Lifestyle">Lifestyle</a></span>
										<h3 class="entry-title"><a href="#" title="Trendy Summer Fashion">Trendy Summer Fashion</a></h3>
									</div>
									<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses...</p>
									<a href="#" title="Read More">Read More</a>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3 blog-masonry-box">
						</div>
						<div class="col-xs-6 col-sm-3 blog-masonry-box">
							<div class="type-post">
								<div class="entry-cover">
									<div class="post-meta">
										<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
										<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
									</div>
									<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
								</div>
								<div class="entry-content">
									<div class="entry-header">	
										<span class="post-category"><a href="#" title="Lifestyle">Lifestyle</a></span>
										<h3 class="entry-title"><a href="#" title="Trendy Summer Fashion">Trendy Summer Fashion</a></h3>
									</div>
									<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses...</p>
									<a href="#" title="Read More">Read More</a>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3 blog-masonry-box">
							<div class="type-post">
								<div class="entry-cover">
									<div class="post-meta">
										<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
										<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
									</div>
									<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
								</div>
								<div class="entry-content">
									<div class="entry-header">	
										<span class="post-category"><a href="#" title="Lifestyle">Lifestyle</a></span>
										<h3 class="entry-title"><a href="#" title="Trendy Summer Fashion">Trendy Summer Fashion</a></h3>
									</div>
									<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses...</p>
									<a href="#" title="Read More">Read More</a>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3 blog-masonry-box">
							<div class="type-post">
								<div class="entry-cover">
									<div class="post-meta">
										<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
										<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
									</div>
									<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
								</div>
								<div class="entry-content">
									<div class="entry-header">	
										<span class="post-category"><a href="#" title="Lifestyle">Lifestyle</a></span>
										<h3 class="entry-title"><a href="#" title="Trendy Summer Fashion">Trendy Summer Fashion</a></h3>
									</div>
									<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses...</p>
									<a href="#" title="Read More">Read More</a>
								</div>
							</div>
						</div>
						<!-- Pagination -->
						<nav class="navigation pagination">
							<h2 class="screen-reader-text">Posts navigation</h2>
							<div class="nav-links">
								<a class="prev page-numbers" href="#">Previous</a>
								<span class="page-numbers current">
									<span class="meta-nav screen-reader-text">Page </span>1
								</span>
								<a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>2</a>
								<a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>3</a>
								<a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>...</a>
								<a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>6</a>
								<a class="next page-numbers" href="#">Next</a>
							</div>
						</nav><!-- Pagination /- -->
					</div><!-- Row /- -->
				</div><!-- container /- -->
			</div><!-- Aboute-me Section /- -->
		</main>

		
	</div>
	
	<!-- Footer Main -->
	<footer class="container-fluid no-left-padding no-right-padding footer-main">
		<!-- Instagram -->
		<div class="container-fluid no-left-padding no-right-padding instagram-block">
			<ul class="instagram-carousel">
				<li><a href="#"><img src="http://placehold.it/319x319/aaa" alt="Instagram" /></a></li>
				<li><a href="#"><img src="http://placehold.it/319x319" alt="Instagram" /></a></li>
				<li><a href="#"><img src="http://placehold.it/319x319/aaa" alt="Instagram" /></a></li>
				<li><a href="#"><img src="http://placehold.it/319x319" alt="Instagram" /></a></li>
				<li><a href="#"><img src="http://placehold.it/319x319/aaa" alt="Instagram" /></a></li>
				<li><a href="#"><img src="http://placehold.it/319x319" alt="Instagram" /></a></li>
			</ul>
		</div><!-- Instagram /- -->
		<!-- Container -->
		<div class="container">
			<ul class="ftr-social">
				<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i>Facebook</a></li>
				<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i>twitter</a></li>
				<li><a href="#" title="Instagram"><i class="fa fa-instagram"></i>Instagram</a></li>
				<li><a href="#" title="Google Plus"><i class="fa fa-google-plus"></i>Google plus</a></li>
				<li><a href="#" title="Pinterest"><i class="fa fa-pinterest-p"></i>pinterest</a></li>
				<li><a href="#" title="Youtube"><i class="fa fa-youtube"></i>youtube</a></li>
			</ul>
			<div class="copyright">
				<p>Copyright @ 2017 MINIMAG</p>
			</div>
		</div><!-- Container /- -->
	</footer><!-- Footer Main /- -->


</body>
</html>