<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
<title>마이 페이지</title>
<style>
#post, #address1, #address2 {
   	height: 40px;
	padding-left: 10px;
	border: 1px solid #e5e5e5;
	border-radius: 4px;
   }
   
   #postcodify_search_button {
   	align: left;	
   }
   
   .container {
	width: 1024px;
	padding: 2em;
	}

	.bold-blue {
	font-weight: bold;
	color: #0277BD;
	}
	
</style>
<script type="text/javascript">
$(document).ready(function () {
$('#dtBasicExample').DataTable();
$('.dataTables_length').addClass('bs-select');
});
</script>
</head>
<body>

    	<c:import url="../common/menubar.jsp"/>

         <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-image ptb--80" data-bg-image="assets/img/bg/page_title_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">MY PAGE</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>마이 페이지</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <main class="main-content-wrapper">
            <div class="inner-page-content ptb--80 ptb-md--60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 order-lg-2 mb-md--50">
                            <div class="row">
                                <div class="col-12 mb--45">
                                    <article class="blog format-standard">
                                        <div class="blog__inner">
                                           
                                    <!-- 여기 사이에 넣으면 됨 -->
                                 
						         <table id="dtBasicExample" class="table table-striped table-bordered" cellspacing="0" width="100%">
								  <thead>
								    <tr>
								      <th class="th-sm">거래일자</th>
								      <th class="th-sm">회원명</th>
								      <th class="th-sm">상품명</th>
								      <th class="th-sm">수량</th>
								      <th class="th-sm">결제금액</th>
								      <th class="th-sm">수령인</th>
								      <th class="th-sm">수령일자</th>
								      <th class="th-sm">수령여부</th>
								      <th class="th-sm">확인</th>
								    </tr>
								  </thead>
								  <tbody>
								  <c:forEach var="dealList" items="${ dlist }">
								    <tr>
								      <td>${ dealList.dDate }</td>
								      <td>${ dealList.cName }</td>
								      <td>${ dealList.pName }</td>
								      <td>${ dealList.dAmount }</td>
								      <td>${ dealList.dPrice }</td>
								      <td>${ dealList.dReceiver }</td>
								      <td>${ dealList.dRevDate }</td>
								      <td>${ dealList.dRevCheck }</td> 
								      <td>
								      <input type="hidden" id="dNo" value="${ dealList.dNo }">
											<c:url var="checkRcv" value="checkRcv.do">
												<c:param name="dNo" value="${ dealList.dNo }"/>
												<c:param name="dRevCheck" value="${ dealList.dRevCheck }"/>
											</c:url>
											<button type="button" id="chkRcvBtn" onclick="location.href='${ checkRcv }'">변경</button>
								      		
								      </td>
								    </tr>
								    </c:forEach>
								    
								  </tbody>
								  <tfoot>
								  	<tr>
								    <th>거래일자</th>
								    <th>회원명</th>
								    <th>상품명</th>
								      <th>수량</th>
								      <th>결제금액</th>
								      <th>수령인</th>
								      <th>수령일자</th>
								      <th>수령여부</th>
								      <th>확인</th>
								    </tr>
								  </tfoot>
								</table>
      
     
                            		<!-- 여기 사이에 넣으면 됨 -->
                            		
                                        </div>
                                    </article>                                
                                </div>
                            </div>
                            <!-- 페이징 부분 -->
                            <!-- <div class="row">
                                <div class="col-12 text-center">
                                    <ul class="pagination">
                                        <li><span class="page-number current">1</span></li>
                                        <li><a href="#" class="page-number">2</a></li>
                                        <li><span class="dot"></span></li>
                                        <li><span class="dot"></span></li>
                                        <li><span class="dot"></span></li>
                                        <li><a href="#" class="page-number">16</a></li>
                                    </ul>
                                </div>
                            </div> -->
                        </div>
                        <div class="col-lg-3 order-lg-1">
                            <div class="blog-sidebar pr--15 pr-lg--0">
                                <div class="bl-widget author">
                                    <div class="inner">
                                        <div class="thumb">
                                            <!-- <img src="assets/img/others/team-04.jpg" alt="Author Images"> -->
                                        </div>
                                        <div class="info">
                                            <!-- 사이드 바 프로필 부분 -->
                                            <h5 class="mb--5">
                                            	<c:out value="${ loginUser.cName }"/>님의 마이 페이지
                                            </h5>
                                            <p class="degne">UI/ Web Designer</p>
                                            <p class="mb--25">An Affrotable world wide business service It is</p>
                                            <ul class="social mb--20">
                                                <!-- <li class="social__item">
                                                    <a href="https://www.facebook.com" class="social__link">
                                                        <i class="fa fa-facebook"></i>
                                                    </a>
                                                </li>
                                                <li class="social__item">
                                                    <a href="https://www.twitter.com" class="social__link">
                                                        <i class="fa fa-twitter"></i>
                                                    </a>
                                                </li>
                                                <li class="social__item">
                                                    <a href="https://www.plus.google.com" class="social__link">
                                                        <i class="fa fa-google-plus"></i>
                                                    </a>
                                                </li> -->
                                            </ul>
                                            <div class="autor-meta">
                                                <span>내 구매내역 <strong>5</strong></span>
                                                <span>내 문의글 <strong>2</strong></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="bl-widget post mt--50">
                                    <div class="inner">
                                        <h5 class="title">MY PAGE</h5>
                                        <ul class="post-list">
                                            <li>
                                            	<c:url var="myInfo" value="myInfo.do"/>
                                                <a href="${ myInfo }">정보 수정</a>
                                            </li>
                                            <li>
                                            	<c:choose>
                                            	<c:when test="${ loginUser.cLevel eq '사업자' }">
                                            		<c:url var="myBusiness" value="myBusiness.do"/>
	                                                <a href="${ myBusiness }">거래 내역</a>
                                                </c:when>
                                                <c:otherwise>
	                                                <c:url var="myOrderList" value="myOrderList.do"/>
	                                                <a href="${ myOrderList }">구매 내역</a>
                                                </c:otherwise>
                                                </c:choose>
                                            </li>
                                            <c:if test="${ loginUser.cLevel eq '일반' }">
                                            <li>
                                            	<c:url var="myCart" value="myCart.do">
                                            		<c:param name="cNo" value="${ loginUser.cNo }"/>
                                            	</c:url>
                                                <a href="${ myCart }">장바구니</a>
                                            </li>
                                            <li>
                                            	<c:url var="myFavorite" value="myFavorite.do">
                                                		<c:param name="cNo" value="${ loginUser.cNo }"/>
                                                	</c:url>
                                                <a href="${ myFavorite }">위시 리스트</a>
                                            </li>
                                            </c:if>                                             
                                            <li>
                                            	<c:url var="myQna" value="myQna.do"/>
                                                <a href="${ myQna }">문의 내역</a>
                                            </li>
                                            <li>
                                            	<c:url var="myPassword" value="myPassword.do"/>
                                                <a href="${ myPassword }">비밀번호 변경</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="bl-widget quote mt--50">
                                    <div class="inner">
                                        <div class="post-quote">
                                            <div class="quote-info">
                                                <i class="fa fa-quote-right"></i>
                                                <div class="info">
                                                    <h6 class="mb--0">CLEM OJAK</h6>
                                                    <span>Designer</span>
                                                </div>
                                            </div>
                                            <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete.</p>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        <!-- col-lg-3 order-lg-1 끝남 -->
                        
                        
                    </div>
                </div>
            </div>
        </main>
        <!-- Main Content Wrapper End -->

        <!-- Footer Start-->
        <c:import url="../common/footer.jsp"/>
        <!-- Footer End-->

        <!-- OffCanvas Menu Start -->
        <div class="offcanvas-menu-wrapper" id="offcanvasMenu">
            <div class="offcanvas-menu-inner">
                <a href="" class="btn-close">
                    <i class="la la-remove"></i>
                </a>
                <nav class="offcanvas-navigation">
                    <ul class="offcanvas-menu">
                        <li class="menu-item-has-children active">
                            <a href="#">Home</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="index.html">Homepage 01</a>
                                </li>
                                <li>
                                    <a href="index-02.html">Homepage 02</a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="shop.html">Shop</a>
                            <ul class="sub-menu">
                                <li class="menu-item-has-children">
                                    <a href="#">
                                        <span class="mm-text">Shop Grid</span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="shop-fullwidth.html">Full Width</a>
                                        </li>
                                        <li>
                                            <a href="shop.html">Left Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="shop-right-sidebar.html">Right Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="shop-three-columns.html">Three Columns</a>
                                        </li>
                                        <li>
                                            <a href="shop-four-columns.html">Four Columns</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Shop List</a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="shop-list.html">Full Width</a>
                                        </li>
                                        <li>
                                            <a href="shop-list-sidebar.html">Left Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="shop-list-right-sidebar.html">Right Sidebar</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Product Details</a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="product-details.html">Tab Style 1</a>
                                        </li>
                                        <li>
                                            <a href="product-details-tab-style-2.html">Tab Style 2</a>
                                        </li>
                                        <li>
                                            <a href="product-details-tab-style-3.html">Tab Style 3</a>
                                        </li>
                                        <li>
                                            <a href="product-details-gallery-left.html">Gallery Left</a>
                                        </li>
                                        <li>
                                            <a href="product-details-gallery-right.html">Gallery Right</a>
                                        </li>
                                        <li>
                                            <a href="product-details-sticky-left.html">Sticky Left</a>
                                        </li>
                                        <li>
                                            <a href="product-details-sticky-right.html">Sticky Right</a>
                                        </li>
                                        <li>
                                            <a href="product-details-slider-box.html">Slider Box</a>
                                        </li>
                                        <li>
                                            <a href="product-details-slider-full-width.html">Slider Box Full Width</a>
                                        </li>
                                        <li>
                                            <a href="product-details-affiliate.html">Affiliate Proudct</a>
                                        </li>                                                    
                                        <li>
                                            <a href="product-details-variable.html">Variable Proudct</a>
                                        </li>
                                        <li>
                                            <a href="product-details-group.html">Group Product</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="blog.html">Blog</a>
                            <ul class="sub-menu">
                                <li class="menu-item-has-children">
                                    <a href="#">Blog</a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="blog-left-sidebar.html">Blog Left Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="blog.html">Blog Right Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="blog-01-column.html">Blog 01 column</a>
                                        </li>
                                        <li>
                                            <a href="blog-02-columns.html">Blog 02 columns</a>
                                        </li>
                                        <li>
                                            <a href="blog-03-columns.html">Blog 03 columns</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children">
                                    <a href="#">Blog Details</a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="blog-details-audio.html">Audio Blog Details</a>
                                        </li>
                                        <li>
                                            <a href="blog-details-gallery.html">Gallery Blog Details</a>
                                        </li>
                                        <li>
                                            <a href="blog-details-image.html">image Blog Details</a>
                                        </li>
                                        <li>
                                            <a href="blog-details-video.html">Video Blog Details</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">Pages</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="my-account.html">My Account</a>
                                </li>
                                <li>
                                    <a href="checkout.html">Checkout</a>
                                </li>
                                <li>
                                    <a href="cart.html">Cart</a>
                                </li>
                                <li>
                                    <a href="compare.html">Compare</a>
                                </li>
                                <li>
                                    <a href="order-tracking.html">Track Order</a>
                                </li>
                                <li>
                                    <a href="wishlist.html">Wishlist</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="contact-us.html">Contact Us</a>
                        </li>
                    </ul>
                    <div class="site-info vertical">
                        <div class="site-info__item">
                            <a href="tel:+01223566678"><strong>+01 2235 666 78</strong></a>
                            <a href="mailto:Support@contixs.com">Support@furtrate.com</a>
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
                            <li class="mini-cart__product">
                                <a href="#" class="mini-cart__product-remove">
                                    <i class="la la-remove"></i>
                                </a>
                                <div class="mini-cart__product-image">
                                    <img src="assets/img/products/prod-01-100x100.jpg" alt="products">
                                </div>
                                <div class="mini-cart__product-content">
                                    <a class="mini-cart__product-title" href="product-details.html">Golden Easy Spot Chair.</a>
                                    <span class="mini-cart__product-quantity">1 x $49.00</span>
                                </div>
                            </li>
                            <li class="mini-cart__product">
                                <a href="#" class="mini-cart__product-remove">
                                    <i class="la la-remove"></i>
                                </a>
                                <div class="mini-cart__product-image">
                                    <img src="assets/img/products/prod-02-100x100.jpg" alt="products">
                                </div>
                                <div class="mini-cart__product-content">
                                    <a class="mini-cart__product-title" href="product-details.html">Golden Easy Spot Chair.</a>
                                    <span class="mini-cart__product-quantity">1 x $49.00</span>
                                </div>
                            </li>
                            <li class="mini-cart__product">
                                <a href="#" class="mini-cart__product-remove">
                                    <i class="la la-remove"></i>
                                </a>
                                <div class="mini-cart__product-image">
                                    <img src="assets/img/products/prod-03-100x100.jpg" alt="products">
                                </div>
                                <div class="mini-cart__product-content">
                                    <a class="mini-cart__product-title" href="product-details.html">Golden Easy Spot Chair.</a>
                                    <span class="mini-cart__product-quantity">1 x $49.00</span>
                                </div>
                            </li>
                        </ul>
                        <div class="mini-cart__total">
                            <span>Subtotal</span>
                            <span class="ammount">$98.00</span>
                        </div>
                        <div class="mini-cart__buttons">
                            <a href="cart.html" class="btn btn-fullwidth btn-bg-primary mb--20">View Cart</a>
                            <a href="checkout.html" class="btn btn-fullwidth btn-bg-primary">Checkout</a>
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
                    <input type="text" name="popup-search" id="popup-search" class="searchform__input" placeholder="Search Entire Store...">
                    <button type="submit" class="searchform__submit"><i class="la la-search"></i></button>
                </form>
            </div>
        </div>
        <!-- Searchform Popup End -->

        <!-- Qicuk View Modal Start -->
        <div class="modal fade product-modal" id="productModal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
                        }'
                        >
                            <div class="product-image">
                                <div class="product-image--holder">
                                    <a href="product-details.html">
                                        <img src="assets/img/products/prod-01.jpg" alt="Product Image" class="primary-image">
                                    </a>
                                </div>
                                <span class="product-badge sale">sale</span>
                            </div>
                            <div class="product-image">
                                <div class="product-image--holder">
                                    <a href="product-details.html">
                                        <img src="assets/img/products/prod-02.jpg" alt="Product Image" class="primary-image">
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
                                <a href="#" class="next"><i class="la la-angle-double-right"></i></a>
                            </div>
                            <div class="product-rating d-flex mb--20">
                                <div class="star-rating star-three">
                                    <span>Rated <strong class="rating">5.00</strong> out of 5</span>
                                </div>
                            </div>
                            <h3 class="product-title mb--20">Golden Easy Spot Chair.</h3>
                            <p class="product-short-description mb--25">Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra, in vehicula lacus scelerisque. Vestibulum ut sem laoreet, feugiat tellus at, hendrerit arcu.</p>
                            <div class="product-price-wrapper mb--25">
                                <span class="money">$200.00</span>
                                <span class="price-separator">-</span>
                                <span class="money">$400.00</span>
                            </div>
                            <form action="#" class="variation-form mb--30">
                                <div class="product-color-variations d-flex align-items-center mb--20">
                                    <p class="variation-label">Color:</p>
                                    <div class="product-color-variation variation-wrapper">
                                        <div class="variation">
                                            <a class="product-color-variation-btn red selected" data-toggle="tooltip" data-placement="top" title="Red">
                                                <span class="product-color-variation-label">Red</span>
                                            </a>
                                        </div>
                                        <div class="variation">
                                            <a class="product-color-variation-btn black" data-toggle="tooltip" data-placement="top" title="Black">
                                                <span class="product-color-variation-label">Black</span>
                                            </a>
                                        </div>
                                        <div class="variation">
                                            <a class="product-color-variation-btn pink" data-toggle="tooltip" data-placement="top" title="Pink">
                                                <span class="product-color-variation-label">Pink</span>
                                            </a>
                                        </div>
                                        <div class="variation">
                                            <a class="product-color-variation-btn blue" data-toggle="tooltip" data-placement="top" title="Blue">
                                                <span class="product-color-variation-label">Blue</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-size-variations d-flex align-items-center mb--15">
                                    <p class="variation-label">Size:</p>   
                                    <div class="product-size-variation variation-wrapper">
                                        <div class="variation">
                                            <a class="product-size-variation-btn selected" data-toggle="tooltip" data-placement="top" title="S">
                                                <span class="product-size-variation-label">S</span>
                                            </a>
                                        </div>
                                        <div class="variation">
                                            <a class="product-size-variation-btn" data-toggle="tooltip" data-placement="top" title="M">
                                                <span class="product-size-variation-label">M</span>
                                            </a>
                                        </div>
                                        <div class="variation">
                                            <a class="product-size-variation-btn" data-toggle="tooltip" data-placement="top" title="L">
                                                <span class="product-size-variation-label">L</span>
                                            </a>
                                        </div>
                                        <div class="variation">
                                            <a class="product-size-variation-btn" data-toggle="tooltip" data-placement="top" title="XL">
                                                <span class="product-size-variation-label">XL</span>
                                            </a>
                                        </div>
                                    </div>                                 
                                </div>
                                <a href="" class="reset_variations">Clear</a>
                            </form>
                            <div class="product-action d-flex flex-sm-row flex-column align-items-sm-center align-items-start mb--30">
                                <div class="quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30">
                                    <label class="quantity-label" for="quick-qty">Quantity:</label>
                                    <div class="quantity">
                                        <input type="number" class="quantity-input" name="qty" id="quick-qty" value="1" min="1">
                                    </div>
                                </div>
                                <button type="button" class="btn btn-size-sm btn-shape-square" onclick="window.location.href='cart.html'">
                                    Add To Cart
                                </button>
                            </div>  
                            <div class="product-footer-meta">
                                <p><span>Category:</span>
                                    <a href="shop.html">Full Sweater</a>,
                                    <a href="shop.html">SweatShirt</a>,
                                    <a href="shop.html">Jacket</a>,
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
    </div>
    <!-- Main Wrapper End -->
    
	<script>
		function chkRcv() {
			var btnval = $("#chkRcvBtn").val();
			var rcv = $("#chkRcvBtn").parent().parent().children().eq(7).text();
			
			console.log(btnval);
			console.log(rcv);
			
			if(btnval == '취소') {
				alert('수령 취소 처리하시겠습니까?');
				$("#chkRcvBtn").attr('value', '확인');
			} else {
				alert('수령 처리하시겠습니까?');
				$("#chkRcvBtn").attr('value', '취소');
			}	
			
		};
		
		
		
	
		/* $(document).on('click','#chkRcvBtn', function () { {
			alert($(this).attr('value'));
			$(this).attr("value", '완료');
			console.log($(this).attr('value'));
			
		}; */
	</script>
    
    
  
    <!-- ************************* JS Files ************************* -->

    <!-- jQuery JS -->
    <!-- <script src="resource/assets/js/vendor.js"></script> -->

    <!-- Main JS -->
    <!-- <script src="resource/assets/js/main.js"></script> -->
    
	<!-- Bootstrap core JavaScript-->
	<!--   <script src="resources/admin/vendor/jquery/jquery.min.js"></script>
  <script src="resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->

  <!-- Core plugin JavaScript-->
	<!--   <script src="resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script> -->

  <!-- Page level plugin JavaScript-->
	<script src="resources/admin/vendor/datatables/jquery.dataTables.js"></script>
  	<script src="resources/admin/vendor/datatables/dataTables.bootstrap4.js"></script>
  	<link href="resources/user/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
  	<link href="resources/user/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css">
  	<link href="resources/user/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css">
  	<link href="resources/user/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
  	<script src="resources/user/datatables/jquery.dataTables.min.js"></script>

  <!-- Custom scripts for all pages-->
<!--   <script src="resources/admin/js/sb-admin.min.js"></script> -->

  <!-- Demo scripts for this page-->
<!--   <script src="resources/admin/js/demo/datatables-demo.js"></script> -->
</body>

</html>