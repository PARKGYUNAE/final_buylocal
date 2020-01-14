<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html> 
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>땡처리게시판</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicons -->
    <link rel="shortcut icon" href="resources/assets/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="resources/assets/img/icon.png">

    <!-- ************************* CSS Files ************************* -->

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="resources/assets/css/vendor.css">

    <!-- style css -->
    <link rel="stylesheet" href="resources/assets/css/main.css">
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
				<h1>떙처리</h1>
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
										<c:url var="ttangDetail" value="ttangDetail.do"/>
										<span class="byline"><a href="${ttangDetail }" title="Indesign">상세정보보기</a></span>
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
									</div> --%>
									</div>
                                  <!-- forEach end -->
                                            </div>
                                        </div>
                                  
                              <!-- pagination start -->   
               				<nav class="pagination-wrap">
							<ul class="pagination">
								<c:if test="${pi.currentPage <=1 }">
									<li><span class="page-number current">&lt;&lt;</span></li>
								</c:if>
								<c:if test="${pi.currentPage > 1 }">
									<c:url var="before" value="${ttang }">
										<c:param name="page" value="${pi.currentPage-1 }"/>
									</c:url>
									<li><a class="page-number" href="${before }">&lt;&lt;</a></li>
								</c:if>
								<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
									<c:if test="${p eq pi.currentPage }">
										<li><span class="page-number current">${p }</span></li>
									</c:if>
									<c:if test="${p ne pi.currentPage }">
										<c:url var="pagination" value="${ttang }">
											<c:param name="page" value="${p }"/>
										</c:url>
										<li><a href="${pagination }" class="page-number">${p }</a></li>
									</c:if>
								</c:forEach>
								<!-- [다음] -->
								<c:if test="${pi.currentPage >= pi.maxPage}">
									<li><span class="page-number current">&gt;&gt;</span></li>
								</c:if>
								<c:if test="${pi.currentPage < pi.maxPage }">
									<c:url var="after" value="${ttang }">
										<c:param name="page" value="${pi.currentPage + 1 }"/>
									</c:url>
									<li><a class="page-number" href="${after }">&gt;&gt;</a></li>
								</c:if> 
							</ul>
						</nav>
						<!-- pagination end -->
					</div>
					
					<div class="col-xl-3 col-lg-4 order-lg-1">
						<aside class="shop-sidebar">
							<div class="shop-widget mb--40">
								<h3 class="widget-title mb--25">카테고리</h3>
								<ul class="widget-list category-list">
									<li><a href="#"> <span class="category-title">한식</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="#"> <span class="category-title">중식</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="#"> <span class="category-title">일식</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="#"> <span class="category-title">양식</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="#"> <span class="category-title">커피/제과</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="#"> <span class="category-title">기타</span> <i class="fa fa-angle-double-right"></i></a></li>
								</ul>
							</div>
							
							<div class="shop-widget mb--40">
								<h3 class="widget-title mb--25">가격</h3>
								<ul class="widget-list price-list">
									<li><a href="shop.html"> <span>Low - Medium</span> <strong
											class="font-weight-medium">10만원 이하</strong>
									</a></li>
									<li><a href="shop.html"> <span>Medium - High</span> <strong
											class="font-weight-medium">10 ~ 30만원이하</strong>
									</a></li>
									<li><a href="shop.html"> <span>High - Avobe</span> <strong
											class="font-weight-medium">30만원 초과</strong>
									</a></li>
								</ul>
							</div>
							<div class="shop-widget">
								<h3 class="widget-title mb--25">태그</h3>
								<div class="tagcloud">
									<!-- 클릭 시, 검색 가능하게 -->
									<a href="#">제철과일</a> 
									<a href="#">단품식사</a> 
									<a href="#">혼밥</a> 
									<a href="#">가성비</a>
									<a href="#">집밥</a>
									<a href="#">다이어트</a>
									<a href="#">야식</a>
								</div>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</div>
		</div>
	<!-- Main Content Wrapper Start -->
        <!-- Main Content Wrapper Start -->

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