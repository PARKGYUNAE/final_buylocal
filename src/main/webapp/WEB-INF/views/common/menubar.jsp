<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js" lang="zxx">
 

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Beck - Furniture eCommerce Bootstrap 4 Template</title>
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

<!-- Preloader Start -->
    <div class="ft-preloader active">
        <div class="ft-preloader-inner h-100 d-flex align-items-center justify-content-center">
            <div class="ft-child ft-bounce1"></div>
            <div class="ft-child ft-bounce2"></div>
            <div class="ft-child ft-bounce3"></div>
        </div>
    </div>
     <!-- Preloader End -->
 	<c:url var="hotDealWishList" value="hotDealWishList.do"/>
	<c:url var="hotDealBuyForm" value="hotDealBuyForm.do"/>
	<c:url var="hotDealDetail" value="hotDealDetail.do" />
	<c:url var="admin" value="goAdmin.do"/>


    <!-- Main Wrapper Start -->
    <div class="wrapper">
        <!-- Header Start -->
        <header class="header">
            <div class="header__inner fixed-header">
                <div class="header__main">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="header__main-inner">
                                    <div class="header__main-left">
                                        <div class="logo">
                                            <a href="<%=request.getContextPath() %>" class="logo--normal">
                                                <img src="resources/assets/img/logo/logo.png" alt="Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="header__main-center">
                                        <nav class="main-navigation text-center d-none d-lg-block">
                                            <ul class="mainmenu">
                                                <li class="mainmenu__item menu-item-has-children">
                                                	<c:url var="introduction" value="introduction.do"/>
                                                	<c:url var="holymoly" value="holymoly.do"/>
                                                 	<c:url var="noticeM" value="noticeMain.do"/>
                                                    <a href="${introduction}" class="mainmenu__link">
                                                        <span class="mm-text">바이로컬</span>
                                                    </a>
                                                    <ul class="sub-menu">
                                                        <li>
                                                            <a href="${introduction}">
                                                                <span class="mm-text">사이트 소개</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${holymoly}">
                                                                <span class="mm-text">홀리몰리</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="${noticeM}">
                                                                <span class="mm-text">공지사항</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="mainmenu__item menu-item-has-children megamenu-holder">
                                                	<c:url var="hotDeal" value="hotDealMenu.do"/>
                                                    <a href="${hotDeal}" class="mainmenu__link">
                                                        <span class="mm-text">핫딜</span>
                                                    </a>
                                                    <ul class="megamenu">
                                                        <li>
                                                            <ul>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">디지털/가전</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">의류/패션잡화</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">뷰티/미용</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">스포츠/레저</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">도서/티켓/음반</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <ul> 
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">가구/인테리어</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">신선/가공식품</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">게임/취미</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">반려동물용품</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">기타</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                             <li class="mainmenu__item menu-item-has-children">
                                                    <c:url var="ttangM" value="ttangMain.do"/>
                                                    <a href="${ttangM}" class="mainmenu__link">
                                                        <span class="mm-text">땡처리</span>
                                                    </a>
                                                    <ul class="sub-menu">
                                                        <li class="menu-item-has-children">
                                                            <li>
                                                                <a title="한식" href="${ttangM}">
                                                                    <span class="mm-text">한식</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a title="중식" href="${ttangM}">
                                                                    <span class="mm-text">중식</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a title="일식" href="${ttangM}">
                                                                    <span class="mm-text">일식</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a title="양식" href="${ttangM}">
                                                                    <span class="mm-text">양식</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a title="커피/제과" href="${ttangM}">
                                                                    <span class="mm-text">커피/제과</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a title="기타" href="${ttangM}">
                                                                    <span class="mm-text">기타</span>
                                                                </a>
                                                            </li>
                                                            </ul>
                                                       </li>
                                                      
                                                <li class="mainmenu__item">
													<c:url var="shareboard" value="shareboard.do"/>
                                                    <a href="${shareboard }" class="mainmenu__link">
                                                        <span class="mm-text">나눔게시판</span>
                                                    </a>
                                                </li>
						                       <li class="mainmenu__item menu-item-has-children">
                                                    <c:url var="advertisement" value="advertisement.do"/>
                                                    <c:url var="insertProduct" value="insertProduct.do"/>
                                                    <a href="${advertisement}" class="mainmenu__link">
                                                        <span class="mm-text">신청하기</span>
                                                    </a>
                                                  <ul class="sub-menu">
                                                        <li class="menu-item-has-children">
                                                            <li>
                                                                <a title="한식" href="${advertisement}">
                                                                    <span class="mm-text">이벤트/광고 신청</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a title="중식" href="${insertProduct}">
                                                                    <span class="mm-text">상품 신청</span>
                                                                </a>
                                                            </li>
                                                   </ul>
                                                 </li>
                                                <li class="mainmenu__item">
                                               	<c:url var="contactUs" value="contactUs.do"/> 
                                                    <a href="${contactUs}" class="mainmenu__link">
                                                        <span class="mm-text">고객센터</span>
                                                    </a>
                                                </li>
                                                <!-- 관리자페이지 연결(임시) -->
                                                <li class="mainmenu__item menu-item-has-children">
                                                    <a href="${admin}" class="mainmenu__link">
                                                        <span class="mm-text">관리자</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <div class="header__main-right">
                                        <div class="header-toolbar-wrap">
                                            <div class="header-toolbar">
                                                <div class="header-toolbar__item header-toolbar--search-btn">
                                                    <a href="#searchForm" class="header-toolbar__btn toolbar-btn">
                                                        <i class="la la-search"></i>
                                                    </a>
                                                </div>
                                                <!-- 메뉴바 아이콘 추가 (소망) -->
                                                <div class="header-toolbar__item header-toolbar--minicart-btn">
                                                    <c:if test="${ loginUser.cId eq 'admin' }">
                                                    <a href="#" class="header-toolbar__btn toolbar-btn1">
                                                        <i class="la la-gears"></i>
                                                    </a>
                                                    </c:if>
                                                </div>
                                                <div class="header-toolbar__item header-toolbar--minicart-btn">
                                                    <a href="#miniCart" class="header-toolbar__btn toolbar-btn1">
                                                        <i class="la la-heart-o"></i>
                                                    </a>
                                                </div>
                                                <div class="header-toolbar__item header-toolbar--minicart-btn">
                                                    <a href="#miniCart" class="header-toolbar__btn toolbar-btn">
                                                        <i class="la la-shopping-cart"></i>
                                                    </a>
                                                </div>
                                                <div class="header-toolbar__item header-toolbar--minicart-btn">
                                                    <!-- 로그인 페이지 이동 처리 추가 (소망) -->
                                                    <!-- 로그인 유저가 있을 시 같은 버튼을 누르면 회원 프로필 페이지로 이동 -->
                                                    <c:choose>
                                                        <c:when test="${ empty sessionScope.loginUser }">
                                                        	<c:url var="userLogin" value="userlogin.do"/>	                                                    <c:url var="userLogin" value="userLogin.do"/>
		                                                    <a href="${ userLogin }" class="header-toolbar__btn toolbar-btn1">
		                                                        <i class="la la-user"></i>
		                                                    </a>	
		                                                </c:when>
		                                                <c:otherwise>
		                                                	<c:url var="myProfile" value="myProfile.do"/>	
		                                                	<a href="${ myProfile }" class="header-toolbar__btn toolbar-btn1">
		                                                        <i class="la la-user"></i>
		                                                    </a>
		                                                </c:otherwise>
	                                              	</c:choose>
	                                                
                                                </div>
                                                <div class="header-toolbar__item d-block d-lg-none">
                                                    <a href="#offcanvasMenu" class="header-toolbar__btn toolbar-btn menu-btn">
                                                        <div class="hamburger-icon">
                                                            <span></span>
                                                            <span></span>
                                                            <span></span>
                                                            <span></span>
                                                            <span></span>
                                                            <span></span>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <!-- 로그아웃 버튼 만들어야 함 (소망) -->
                                            <!-- 로그인 유저가 있을 시 활성화 -->
                                            <c:if test="${ !empty sessionScope.loginUser }">
                                            	<c:url var="logout" value="logout.do"/>
	                                         	<a href="${ logout }">로그아웃</a>
	                                         </c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header End -->
        
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
                                    <img src="resources/assets/img/products/prod-01-100x100.jpg" alt="products">
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
                                    <img src="resources/assets/img/products/prod-02-100x100.jpg" alt="products">
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
                                    <img src="resources/assets/img/products/prod-03-100x100.jpg" alt="products">
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
                <p>검색어를 입력하세요</p>
                <form class="searchform">
                    <input type="text" name="popup-search" id="popup-search" class="searchform__input" placeholder="지역, 상품, 업체 등 을 검색해보세요">
                    <button type="submit" class="searchform__submit"><i class="la la-search"></i></button>
                </form>
            </div>
        </div>
        
	</div>
	
	 <!-- ************************* JS Files ************************* -->

	    <!-- jQuery JS -->
	    <script src="resources/assets/js/vendor.js"></script>
	
	    <!-- Main JS -->
	    <script src="resources/assets/js/main.js"></script>
	

</body>
</html>