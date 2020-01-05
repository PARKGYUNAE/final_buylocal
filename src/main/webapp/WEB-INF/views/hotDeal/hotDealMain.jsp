<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>핫딜게시판</title>
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
						<li class="current"><span>Shop Left Sidebar</span></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb area End -->
	
	<!-- Main Content Wrapper Start -->
	<div class="main-content-wrapper">
		<div class="shop-page-wrapper ptb--80">
			<div class="container">
				<div class="row">
				<c:url var="wishList" value="wishList.do"/>
				<c:url var="buyForm" value="buyForm.do"/>
				<c:url var="hotDealInsertForm" value="hotDealInsertForm.do"/>
					<div class="col-xl-9 col-lg-8 order-lg-2 mb-md--50">
						<div class="shop-toolbar mb--50">
							<div class="row align-items-center">
								<div class="col-md-5 mb-sm--30 mb-xs--10">
									<div class="shop-toolbar__left">
										<div class="product-ordering">
											<select class="product-ordering__select nice-select">
												<option value="0">정렬 기준</option>
												<option value="1">Relevance</option>
												<option value="2">Name, A to Z</option>
												<option value="3">Name, Z to A</option>
												<option value="4">Price, low to high</option>
												<option value="5">Price, high to low</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-7">
									<div class="shop-toolbar__right d-flex justify-content-md-end justify-content-start flex-sm-row flex-column">
										<div class="product-view-mode ml--50 ml-xs--0">
											<a class="active" href="${hotDealInsertForm }" data-target="grid">상품등록하기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="shop-products">
							<div class="row">	
								<!-- 여기부터 -->
								<c:forEach var="hot" items="${list }">
								<div class="col-xl-4 col-sm-6 mb--50">
									<div class="ft-product">
										<div class="product-inner">
											<div class="product-image">
												<figure class="product-image--holder">
													<img src="resources/assets/img/products/prod-02-270x300.jpg"
														alt="Product">
												</figure>
												<c:url var="hotDealDetail" value="hotDealDetail.do" />
												<a href="${hotDealDetail}" class="product-overlay"></a>
												<div class="product-action">
													<a href="${wishList}" class="action-btn"> <i
														class="la la-heart-o"></i>
													</a> 
												</div>
											</div>
											<div class="product-info">
												<div class="product-category">
													<a href="product-details.html">${hot.pName }</a>
												</div>
												<h3 class="product-title">
													<a href="product-details.html">${hot.hTitle }</a>
												</h3>
												<div class="product-title">
													<div class="product-price-wrapper">
														<span class="money">할인 전 가격 : ${hot.pOriginalPrice }</span>
													</div>
													<div class="product-price-wrapper">
														<span class="money">할인 후 가격 : ${hot.pFinalPrice }</span>
													</div>
													<a href="${buyForm }" class="add-to-cart pr--15"> <i
														class="la la-plus"></i> <span>장바구니</span>
													</a>
												</div>
											</div>
										</div>
									</div>
									<div class="ft-product-list">
										<div class="product-inner">
											<figure class="product-image">
												<a href="product-details.html"> <img
													src="resources/assets/img/products/prod-02-270x300.jpg"
													alt="Products">
												</a>
												<div class="product-thumbnail-action">
													<a data-toggle="modal" data-target="#productModal"
														class="action-btn quick-view"> <i class="la la-eye"></i>
													</a>
												</div>
											</figure>
											<div class="product-info">
												<h3 class="product-title mb--25">
													<a href="product-details.html">Long Cartigen</a>
												</h3>
												<div class="ft-product-action-list mb--20">
													<div class="product-size mb--25">
														<div class="product-size-swatch">
															<span class="product-size-swatch-btn variation-btn">
																XL </span> <span class="product-size-swatch-btn variation-btn">
																L </span> <span class="product-size-swatch-btn variation-btn">
																M </span> <span class="product-size-swatch-btn variation-btn">
																S </span>
														</div>
													</div>
													<div class="product-color">
														<div class="product-color-swatch">
															<span
																class="product-color-swatch-btn variation-btn abbey">
																Abbey </span> <span
																class="product-color-swatch-btn variation-btn blue">
																Blue </span> <span
																class="product-color-swatch-btn variation-btn copper">
																Copper </span> <span
																class="product-color-swatch-btn variation-btn old-rose">
																Old Rose </span>
														</div>
													</div>
												</div>
												<div class="product-price-wrapper mb--15 mb-sm--10">
													<span class="money">$80</span> <span
														class="money-separator">-</span> <span class="money">$200</span>
												</div>
												<p class="product-short-description mb--20">Donec
													accumsan auctor iaculis. Sed suscipit arcu ligula, at
													egestas magna molestie a. Proin ac ex maximus, ultrices
													justo eget, sodales orci. Aliquam egestas libero ac turpis
													pharetra</p>
												<div class="ft-product-action-list d-flex align-items-center">
													
													<a href="${buyForm}" class="btn btn-size-md">Add To Cart</a>
													<a href="${wishList}" class="ml--20 action-btn"> <i
														class="la la-heart-o"></i>
													</a> <a href="${wishList}" class="ml--20 action-btn"> <i
														class="la la-repeat"></i>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div> <!-- 여기까지가 한개의 상품 리스트 아래 부분은 미리보기 기능임 -->
								</c:forEach>
							</div>
						</div>
						<nav class="pagination-wrap">
							<ul class="pagination">
								<c:if test="${pi.currentPage <=1 }">
									<li><span class="page-number current">&lt;&lt;</span></li>
								</c:if>
								<c:if test="${pi.currentPage > 1 }">
									<c:url var="before" value="${hotDeal }">
										<c:param name="page" value="${pi.currentPage-1 }"/>
									</c:url>
									<li><a class="page-number" href="${before }">&lt;&lt;</a></li>
								</c:if>
								<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
									<c:if test="${p eq pi.currentPage }">
										<li><span class="page-number current">${p }</span></li>
									</c:if>
									<c:if test="${p ne pi.currentPage }">
										<c:url var="pagination" value="${hotDeal }">
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
									<c:url var="after" value="${hotDeal }">
										<c:param name="page" value="${pi.currentPage + 1 }"/>
									</c:url>
									<li><a class="page-number" href="${after }">&gt;&gt;</a></li>
								</c:if> 
							</ul>
						</nav>
					</div>
					<div class="col-xl-3 col-lg-4 order-lg-1">
						<aside class="shop-sidebar">
							<div class="shop-widget mb--40">
								<h3 class="widget-title mb--25">카테고리</h3>
								<ul class="widget-list category-list">
									<li><a href="shop.html"> <span class="category-title">디지털/가전</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="shop.html"> <span class="category-title">의류/패션잡화</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="shop.html"> <span class="category-title">뷰티/미용</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="shop.html"> <span class="category-title">스포츠/레져</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="shop.html"> <span class="category-title">도서/티켓/음반</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="shop.html"> <span class="category-title">가구/인테리어</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="shop.html"> <span class="category-title">신선/가공식품</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="shop.html"> <span class="category-title">게임/취미</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="shop.html"> <span class="category-title">반려동물용품</span> <i class="fa fa-angle-double-right"></i></a></li>
									<li><a href="shop.html"> <span class="category-title">기타</span> <i class="fa fa-angle-double-right"></i></a></li>
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
							<div class="shop-widget mb--40">
								<h3 class="widget-title mb--25">판매처	</h3>
								<ul class="widget-list brand-list">
									<li><a href="shop.html"> <span>Walmart</span> <strong
											class="color--red font-weight-medium">10</strong>
									</a></li>
									<li><a href="shop.html"> <span>Yellow</span> <strong
											class="color--red font-weight-medium">50</strong>
									</a></li>
									<li><a href="shop.html"> <span>H &amp; M</span> <strong
											class="color--red font-weight-medium">46</strong>
									</a></li>
									<li><a href="shop.html"> <span>Black &amp;
												White</span> <strong class="color--red font-weight-medium">46</strong>
									</a></li>
								</ul>
							</div>
							<div class="shop-widget">
								<h3 class="widget-title mb--25">태그</h3>
								<div class="tagcloud">
									<a href="shop.html">Cloth</a> <a href="shop.html">Blazer</a> <a
										href="shop.html">Jacket</a> <a href="shop.html">Polo Shirt</a>
									<a href="shop.html">T-Shirt</a> <a href="shop.html">Shoes</a> <a
										href="shop.html">Pant</a> <a href="shop.html">Party Dress</a>
									<a href="shop.html">Coktail Dress</a> <a href="shop.html">Sweater</a>
									<a href="shop.html">Jeans</a>
								</div>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</div>
	</div>
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