<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<c:url var="hotDealWishList" value="hotDealWishList.do"/>
				<c:url var="hotDealBuyForm" value="hotDealBuyForm.do"/>
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
												<a href="${hotDealDetail }" class="product-overlay"></a>
												<div class="product-action">
													<a href="${hotDealWishList }" class="action-btn"> <i
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
													<a href="${hotDealBuyForm }" class="add-to-cart pr--15"> <i
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
													
													<a href="${hotDealBuyForm}" class="btn btn-size-md">Add To Cart</a>
													<a href="${hotDealWishList}" class="ml--20 action-btn"> <i
														class="la la-heart-o"></i>
													</a> <a href="${hotDealWishList}" class="ml--20 action-btn"> <i
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

	<!-- Footer Start-->
	<footer class="footer bg-color" data-bg-color="#f4f8fa">
		<div class="footer-top">
			<div class="container-fluid">
				<div class="row border-bottom pt--70 pb--70">
					<div class="col-lg-3 col-sm-6 offset-md-1 offset-lg-0 mb-md--45">
						<div class="footer-widget">
							<div class="textwidget">
								<figure class="footer-logo mb--30">
									<img src="assets/img/logo/logo.png" alt="Logo">
								</figure>
								<p>On the other hand, we denounce with righteous indignation
									and dislike men who are so beguiled and demoralized by the
									charms.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-sm-3 offset-lg-1 offset-sm-2 mb-md--45">
						<div class="footer-widget">
							<h3 class="widget-title mb--35 mb-sm--20">Company</h3>
							<div class="footer-widget">
								<ul class="footer-menu">
									<li><a href="index.html">About Us</a></li>
									<li><a href="blog.html">Blogs</a></li>
									<li><a href="#">Careers</a></li>
									<li><a href="contact-us.html">Contact</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-sm-4 offset-md-1 offset-lg-0 mb-xs--45">
						<div class="footer-widget">
							<h3 class="widget-title mb--35 mb-sm--20">Product</h3>
							<div class="footer-widget">
								<ul class="footer-menu">
									<li><a href="#">Pricing</a></li>
									<li><a href="#">Features</a></li>
									<li><a href="#">Customers</a></li>
									<li><a href="#">Demos</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-sm-4 mb-xs--45">
						<div class="footer-widget">
							<h3 class="widget-title mb--35 mb-sm--20">Helps</h3>
							<div class="footer-widget">
								<ul class="footer-menu">
									<li><a href="#">Introduction</a></li>
									<li><a href="#">Feedback</a></li>
									<li><a href="#">Referals</a></li>
									<li><a href="#">Network Status</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-sm-4">
						<div class="footer-widget">
							<h3 class="widget-title mb--35 mb-sm--20">Social Network</h3>
							<div class="footer-widget">
								<ul class="footer-menu">
									<li><a href="#">Facebook</a></li>
									<li><a href="#">Twitter</a></li>
									<li><a href="#">Linkedin</a></li>
									<li><a href="#">Google +</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-middle ptb--40">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-11">
						<div class="footer-widget">
							<div class="taglist">
								<span>Tags:</span> <a href="#">Minimal eCommerce</a> <a href="#">Marketing</a>
								<a href="#">User Exprience</a> <a href="#">Ali Express</a> <a
									href="#">Web</a> <a href="#">Digital Expo</a> <a href="#">Web
									Search</a> <a href="#">Affiliate</a> <a href="#">UCWeb</a> <a
									href="#">Support</a> <a href="#">Template</a> <a href="#">Best
									Queality</a> <a href="#">Mobile</a> <a href="#">24 Support</a> <a
									href="#">Ali Express</a> <a href="#">Web</a> <a href="#">Laptop</a>
								<a href="#">Web Search</a> <a href="#">Affiliate</a> <a href="#">Photoshop</a>
								<a href="#">Support</a> <a href="#">Template</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container-fluid">
				<div class="row border-top ptb--20">
					<div class="col-12 text-center">
						<p class="copyright-text">Beck &copy; 2019 all rights reserved</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer End-->

	<!-- OffCanvas Menu Start -->
	<div class="offcanvas-menu-wrapper" id="offcanvasMenu">
		<div class="offcanvas-menu-inner">
			<a href="" class="btn-close"> <i class="la la-remove"></i>
			</a>
			<nav class="offcanvas-navigation">
				<ul class="offcanvas-menu">
					<li class="menu-item-has-children active"><a href="#">Home</a>
						<ul class="sub-menu">
							<li><a href="index.html">Homepage 01</a></li>
							<li><a href="index-02.html">Homepage 02</a></li>
						</ul></li>
					<li class="menu-item-has-children"><a href="shop.html">Shop</a>
						<ul class="sub-menu">
							<li class="menu-item-has-children"><a href="#"> <span
									class="mm-text">Shop Grid</span>
							</a>
								<ul class="sub-menu">
									<li><a href="shop-fullwidth.html">Full Width</a></li>
									<li><a href="shop.html">Left Sidebar</a></li>
									<li><a href="shop-right-sidebar.html">Right Sidebar</a></li>
									<li><a href="shop-three-columns.html">Three Columns</a></li>
									<li><a href="shop-four-columns.html">Four Columns</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#">Shop List</a>
								<ul class="sub-menu">
									<li><a href="shop-list.html">Full Width</a></li>
									<li><a href="shop-list-sidebar.html">Left Sidebar</a></li>
									<li><a href="shop-list-right-sidebar.html">Right
											Sidebar</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#">Product
									Details</a>
								<ul class="sub-menu">
									<li><a href="product-details.html">Tab Style 1</a></li>
									<li><a href="product-details-tab-style-2.html">Tab
											Style 2</a></li>
									<li><a href="product-details-tab-style-3.html">Tab
											Style 3</a></li>
									<li><a href="product-details-gallery-left.html">Gallery
											Left</a></li>
									<li><a href="product-details-gallery-right.html">Gallery
											Right</a></li>
									<li><a href="product-details-sticky-left.html">Sticky
											Left</a></li>
									<li><a href="product-details-sticky-right.html">Sticky
											Right</a></li>
									<li><a href="product-details-slider-box.html">Slider
											Box</a></li>
									<li><a href="product-details-slider-full-width.html">Slider
											Box Full Width</a></li>
									<li><a href="product-details-affiliate.html">Affiliate
											Proudct</a></li>
									<li><a href="product-details-variable.html">Variable
											Proudct</a></li>
									<li><a href="product-details-group.html">Group Product</a>
									</li>
								</ul></li>
						</ul></li>
					<li class="menu-item-has-children"><a href="blog.html">Blog</a>
						<ul class="sub-menu">
							<li class="menu-item-has-children"><a href="#">Blog</a>
								<ul class="sub-menu">
									<li><a href="blog-left-sidebar.html">Blog Left Sidebar</a>
									</li>
									<li><a href="blog.html">Blog Right Sidebar</a></li>
									<li><a href="blog-01-column.html">Blog 01 column</a></li>
									<li><a href="blog-02-columns.html">Blog 02 columns</a></li>
									<li><a href="blog-03-columns.html">Blog 03 columns</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#">Blog
									Details</a>
								<ul class="sub-menu">
									<li><a href="blog-details-audio.html">Audio Blog
											Details</a></li>
									<li><a href="blog-details-gallery.html">Gallery Blog
											Details</a></li>
									<li><a href="blog-details-image.html">image Blog
											Details</a></li>
									<li><a href="blog-details-video.html">Video Blog
											Details</a></li>
								</ul></li>
						</ul></li>
					<li class="menu-item-has-children"><a href="#">Pages</a>
						<ul class="sub-menu">
							<li><a href="my-account.html">My Account</a></li>
							<li><a href="checkout.html">Checkout</a></li>
							<li><a href="${hotDealBuyForm}">Cart</a></li>
							<li><a href="compare.html">Compare</a></li>
							<li><a href="order-tracking.html">Track Order</a></li>
							<li><a href="${hotDealWishList}">hotDealWishList</a></li>
						</ul></li>
					<li><a href="contact-us.html">Contact Us</a></li>
				</ul>
				<div class="site-info vertical">
					<div class="site-info__item">
						<a href="tel:+01223566678"><strong>+01 2235 666 78</strong></a> <a
							href="mailto:Support@contixs.com">Support@furtrate.com</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- OffCanvas Menu End -->

	<!-- Mini Cart Start -->
	<aside class="mini-cart" id="miniCart">
		<div class="mini-cart-wrapper">
			<div class="mini-cart__close">
				<a href="#" class="btn-close"><i class="la la-remove"></i></a>
			</div>
			<div class="mini-cart-inner">
				<h3 class="mini-cart__heading mb--45">Shopping Cart</h3>
				<div class="mini-cart__content">
					<ul class="mini-cart__list">
						<li class="mini-cart__product"><a href="#"
							class="mini-cart__product-remove"> <i class="la la-remove"></i>
						</a>
							<div class="mini-cart__product-image">
								<img src="assets/img/products/prod-01-100x100.jpg"
									alt="products">
							</div>
							<div class="mini-cart__product-content">
								<a class="mini-cart__product-title" href="product-details.html">Golden
									Easy Spot Chair.</a> <span class="mini-cart__product-quantity">1
									x $49.00</span>
							</div></li>
						<li class="mini-cart__product"><a href="#"
							class="mini-cart__product-remove"> <i class="la la-remove"></i>
						</a>
							<div class="mini-cart__product-image">
								<img src="assets/img/products/prod-02-100x100.jpg"
									alt="products">
							</div>
							<div class="mini-cart__product-content">
								<a class="mini-cart__product-title" href="product-details.html">Golden
									Easy Spot Chair.</a> <span class="mini-cart__product-quantity">1
									x $49.00</span>
							</div></li>
						<li class="mini-cart__product"><a href="#"
							class="mini-cart__product-remove"> <i class="la la-remove"></i>
						</a>
							<div class="mini-cart__product-image">
								<img src="assets/img/products/prod-03-100x100.jpg"
									alt="products">
							</div>
							<div class="mini-cart__product-content">
								<a class="mini-cart__product-title" href="product-details.html">Golden
									Easy Spot Chair.</a> <span class="mini-cart__product-quantity">1
									x $49.00</span>
							</div></li>
					</ul>
					<div class="mini-cart__total">
						<span>Subtotal</span> <span class="ammount">$98.00</span>
					</div>
					<div class="mini-cart__buttons">
						<a href="${hotDealBuyForm}"
							class="btn btn-fullwidth btn-bg-primary mb--20">View Cart</a> <a
							href="checkout.html" class="btn btn-fullwidth btn-bg-primary">Checkout</a>
					</div>
				</div>
			</div>
		</div>
	</aside>
	<!-- Mini Cart End -->

	<!-- Searchform Popup Start -->
	<div class="searchform__popup" id="searchForm">
		<a href="#" class="btn-close"><i class="la la-remove"></i></a>
		<div class="searchform__body">
			<p>Start typing and press Enter to search</p>
			<form class="searchform">
				<input type="text" name="popup-search" id="popup-search"
					class="searchform__input" placeholder="Search Entire Store...">
				<button type="submit" class="searchform__submit">
					<i class="la la-search"></i>
				</button>
			</form>
		</div>
	</div>
	<!-- Searchform Popup End -->

	<!-- Qicuk View Modal Start -->
	<div class="modal fade product-modal" id="productModal" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true"><i class="la la-remove"></i></span>
					</button>
					<div class="row">
						<div class="col-lg-6">
							<div class="element-carousel slick-vertical-center"
								data-slick-options='{
                            "slidesToShow": 1,
                            "slidesToScroll": 1,
                            "arrows": true,
                            "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "la la-angle-double-left" },
                            "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "la la-angle-double-right" }
                        }'>
								<div class="product-image">
									<div class="product-image--holder">
										<a href="product-details.html"> <img
											src="assets/img/products/prod-01.jpg" alt="Product Image"
											class="primary-image">
										</a>
									</div>
									<span class="product-badge sale">sale</span>
								</div>
								<div class="product-image">
									<div class="product-image--holder">
										<a href="product-details.html"> <img
											src="assets/img/products/prod-02.jpg" alt="Product Image"
											class="primary-image">
										</a>
									</div>
									<span class="product-badge sale">sale</span>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="modal-box product-summary">
								<div class="product-navigation text-right mb--20">
									<a href="#" class="prev"><i class="la la-angle-double-left"></i></a>
									<a href="#" class="next"><i
										class="la la-angle-double-right"></i></a>
								</div>
								<div class="product-rating d-flex mb--20">
									<div class="star-rating star-three">
										<span>Rated <strong class="rating">5.00</strong> out of
											5
										</span>
									</div>
								</div>
								<h3 class="product-title mb--20">Golden Easy Spot Chair.</h3>
								<p class="product-short-description mb--25">Donec accumsan
									auctor iaculis. Sed suscipit arcu ligula, at egestas magna
									molestie a. Proin ac ex maximus, ultrices justo eget, sodales
									orci. Aliquam egestas libero ac turpis pharetra, in vehicula
									lacus scelerisque. Vestibulum ut sem laoreet, feugiat tellus
									at, hendrerit arcu.</p>
								<div class="product-price-wrapper mb--25">
									<span class="money">$200.00</span> <span
										class="price-separator">-</span> <span class="money">$400.00</span>
								</div>
								<form action="#" class="variation-form mb--30">
									<div
										class="product-color-variations d-flex align-items-center mb--20">
										<p class="variation-label">Color:</p>
										<div class="product-color-variation variation-wrapper">
											<div class="variation">
												<a class="product-color-variation-btn red selected"
													data-toggle="tooltip" data-placement="top" title="Red">
													<span class="product-color-variation-label">Red</span>
												</a>
											</div>
											<div class="variation">
												<a class="product-color-variation-btn black"
													data-toggle="tooltip" data-placement="top" title="Black">
													<span class="product-color-variation-label">Black</span>
												</a>
											</div>
											<div class="variation">
												<a class="product-color-variation-btn pink"
													data-toggle="tooltip" data-placement="top" title="Pink">
													<span class="product-color-variation-label">Pink</span>
												</a>
											</div>
											<div class="variation">
												<a class="product-color-variation-btn blue"
													data-toggle="tooltip" data-placement="top" title="Blue">
													<span class="product-color-variation-label">Blue</span>
												</a>
											</div>
										</div>
									</div>
									<div
										class="product-size-variations d-flex align-items-center mb--15">
										<p class="variation-label">Size:</p>
										<div class="product-size-variation variation-wrapper">
											<div class="variation">
												<a class="product-size-variation-btn selected"
													data-toggle="tooltip" data-placement="top" title="S"> <span
													class="product-size-variation-label">S</span>
												</a>
											</div>
											<div class="variation">
												<a class="product-size-variation-btn" data-toggle="tooltip"
													data-placement="top" title="M"> <span
													class="product-size-variation-label">M</span>
												</a>
											</div>
											<div class="variation">
												<a class="product-size-variation-btn" data-toggle="tooltip"
													data-placement="top" title="L"> <span
													class="product-size-variation-label">L</span>
												</a>
											</div>
											<div class="variation">
												<a class="product-size-variation-btn" data-toggle="tooltip"
													data-placement="top" title="XL"> <span
													class="product-size-variation-label">XL</span>
												</a>
											</div>
										</div>
									</div>
									<a href="" class="reset_variations">Clear</a>
								</form>
								<div
									class="product-action d-flex flex-sm-row flex-column align-items-sm-center align-items-start mb--30">
									<div
										class="quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30">
										<label class="quantity-label" for="quick-qty">Quantity:</label>
										<div class="quantity">
											<input type="number" class="quantity-input" name="qty"
												id="quick-qty" value="1" min="1">
										</div>
									</div>
									<button type="button" class="btn btn-size-sm btn-shape-square"
										onclick="window.location.href='${hotDealBuyForm}'">Add To
										Cart</button>
								</div>
								<div class="product-footer-meta">
									<p>
										<span>Category:</span> <a href="shop.html">Full Sweater</a>, <a
											href="shop.html">SweatShirt</a>, <a href="shop.html">Jacket</a>,
										<a href="shop.html">Blazer</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Qicuk View Modal End -->

	<!-- Global Overlay Start -->
	<div class="global-overlay"></div>
	<!-- Global Overlay End -->

	<!-- Global Overlay Start -->
	<a class="scroll-to-top" href=""><i class="la la-angle-double-up"></i></a>
	<!-- Global Overlay End -->
	<!-- Main Wrapper End -->


</body>
</html>