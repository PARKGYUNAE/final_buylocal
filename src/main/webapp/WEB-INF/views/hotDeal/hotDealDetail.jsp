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
	.detailBtn2{
		margin-left: 2%;
		width: 30%;
		cursor:pointer;
	}
	.detailBtn{
		margin-left: 7%;
		width: 25%;
		cursor: pointer;
	}
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>
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
							<aside class="widget widget_tags_cloud">
								<h3 class="widget-title">Tags</h3>
								<div class="tagcloud">
									<a href="#" title="Fashion">#맛집</a>
									<a href="#" title="Travel">#신선함</a>
									<a href="#" title="Nature">#육류</a>
									<a href="#" title="Technology">#존맛</a>
								</div>
							</aside><!-- Widget : Tags /- -->
						</div><!-- Widget Area /- -->
						
						<!-- Page Content -->
					
						<!-- Content Area -->
						<div class="col-xl-8 col-lg-8 col-md-6 col-12 content-area">
							<article class="type-post">
								<div class="entry-cover" style="float:left">
									<img src="http://placehold.it/370x247" alt="Post" />
								</div>
								<br>
								<div class="infoMation" style="float:left; width:50%">
									<h6 style="margin-left:20%; margin-bottom:10%">물품명 : </h6>
									<h6 style="margin-left:20%; margin-bottom:10%">할인전 가격 : </h6>
									<h6 style="margin-left:20%; margin-bottom:10%">할인 후 가격 : </h6>
									<h6 style="margin-left:20%; margin-bottom:10%">total : </h6>
									
									<button class="detailBtn">관심상품</button>
									<button class="detailBtn">장바구니</button>
									<button class="detailBtn">구매하기</button>
								</div>
								<br><br>
								
								<div class="entry-content">
									<div class="entry-header">	
									<aside class="widget widget_social">
									<ul>
										<li><a href="#" title=""><i class="ion-social-facebook-outline"></i></a></li>
										<li><a href="#" title=""><i class="ion-social-twitter-outline"></i></a></li>
										<li><a href="#" title=""><i class="ion-social-instagram-outline"></i></a></li>
										<li><a href="#" title=""><i class="ion-social-googleplus-outline"></i></a></li>
										<li><a href="#" title=""><i class="ion-social-pinterest-outline"></i></a></li>
										<li><a href="#" title=""><i class="ion-social-vimeo-outline"></i></a></li>
									</ul>
									</aside>
										<button class="detailBtn2">상품정보</button> <button class="detailBtn2">판매자정보</button> 
										<button class="detailBtn2">상품문의</button>
										<span class="post-category"><a href="#" title="Lifestyle">Lifestyle</a></span>
										<h3 class="entry-title">Trendy Summer Fashion</h3>
										<div class="post-meta">
											<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
											<span class="post-date">MARCH 17, 2017</span>
										</div>
									</div>								
									<p>These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection. But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system.</p>
									<blockquote>
										<p>“To live is the rarest thing in the world. Most people exist, that is all.”</p>
										<span>Oscar Wilde</span>
									</blockquote>
									<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth.</p>
									<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself.</p>
									<h4>More into summer fashion</h4>
									<p>Denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure.</p>
									<figure>
										<img src="http://placehold.it/770x450" alt="Post Image" />
										<figcaption>Summer heat</figcaption>
									</figure>
									<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>
									<ul>
										<li>Which is the same as saying through shrinking from toil and pain.</li>
										<li>But in certain circumstances and owing to the claims of duty or the obligations of business it will.</li>
										<li>The wise man therefore always holds in these matters to this principle of selection.</li>
									</ul>
									<p>Because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise.</p>
									<div class="entry-footer">
										<div class="tags">
											<a href="#" title="Fashion"># Fashion</a>
											<a href="#" title="Travel"># Travel</a>
											<a href="#" title="Nature"># Nature</a>
										</div>
										<ul class="social">
											<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#" title="Pinterest"><i class="fa fa-pinterest-p"></i></a></li>
										</ul>
									</div>
								</div>
							</article>
							<!-- About Author -->
							<div class="about-author-box">
								<div class="author">
									<i><img src="http://placehold.it/170x170" alt="Author" /></i>
									<h4>David Wilde</h4>
									<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences.</p>
									<ul>
										<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#" title="Pinterest"><i class="fa fa-pinterest-p"></i></a></li>
									</ul>
								</div>
							</div><!-- About Author /- -->
							<!-- Related Post -->
							<div class="related-post">
								<h3>You May Also Like</h3>
								<div class="related-post-block">
									<div class="related-post-box">
										<a href="#"><img src="http://placehold.it/170x113" alt="Post" /></a>
										<span><a href="#" title="Travel">Travel</a></span>
										<h3><a href="#" title="Traffic Jams Solved">Traffic Jams Solved</a></h3>
									</div>
									<div class="related-post-box">
										<a href="#"><img src="http://placehold.it/170x113" alt="Post" /></a>
										<span><a href="#" title="Science">Science</a></span>
										<h3><a href="#" title="How Astronauts Live">How Astronauts Live</a></h3>
									</div>
									<div class="related-post-box">
										<a href="#"><img src="http://placehold.it/170x113" alt="Post" /></a>
										<span><a href="#" title="Nature">Nature</a></span>
										<h3><a href="#" title="White Sand">White Sand</a></h3>
									</div>
									<div class="related-post-box">
										<a href="#"><img src="http://placehold.it/170x113" alt="Post" /></a>
										<span><a href="#" title="Lifestyle">Lifestyle</a></span>
										<h3><a href="#" title="Sunset at Beach">Sunset at Beach</a></h3>
									</div>
								</div>
							</div><!-- Related Post /- -->
							<!-- Comment Area -->
							<div class="comments-area">
								<h2 class="comments-title">3 Comments</h2>
								<ol class="comment-list">
									<li class="comment byuser comment-author-admin bypostauthor even thread-even depth-1 parent">
										<div class="comment-body">
											<footer class="comment-meta">
												<div class="comment-author vcard">
													<img alt="img" src="http://placehold.it/70x70" class="avatar avatar-72 photo"/>
													<b class="fn">Alice Chaptman</b>
												</div>
												<div class="comment-metadata">
													<a href="#">10 hours ago</a>											
												</div>
											</footer>
											<div class="comment-content">
												<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure.</p>
											</div>
										</div>
										<ol class="children">
											<li class="comment byuser comment-author-admin bypostauthor odd alt depth-2 parent">
												<div class="comment-body">
													<footer class="comment-meta">
														<div class="comment-author vcard">
															<img alt="img" src="http://placehold.it/70x70" class="avatar avatar-72 photo"/>
															<b class="fn">Droid Vader</b>
														</div>
														<div class="comment-metadata">
															<a href="#">8 hours ago</a>											
														</div>
													</footer>
													<div class="comment-content">
														<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves.</p>
													</div>
												</div>
											</li>
										</ol>
									</li>
									<li class="comment byuser comment-author-admin bypostauthor even thread-odd thread-alt depth-1">
										<div class="comment-body">
											<footer class="comment-meta">
												<div class="comment-author vcard">
													<img alt="img" src="http://placehold.it/70x70" class="avatar avatar-72 photo"/>
													<b class="fn">Giana Blankard</b>
												</div>
												<div class="comment-metadata">
													<a href="#">16 hours ago</a>											
												</div>
											</footer>
											<div class="comment-content">
												<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>
											</div>
										</div>
									</li>
								</ol><!-- comment-list /- -->
								
							</div><!-- Comment Area /- -->
						</div><!-- Content Area /- -->
						<!-- Widget Area -->
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>