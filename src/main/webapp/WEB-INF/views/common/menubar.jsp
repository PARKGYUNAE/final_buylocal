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
                                                    <a href="<%=request.getContextPath() %>" class="mainmenu__link">
                                                        <span class="mm-text">Home</span>
                                                    </a>
                                                    <ul class="sub-menu">
                                                        <li>
                                                            <a href="index.html">
                                                                <span class="mm-text">Home One</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="index-02.html">
                                                                <span class="mm-text">Home Two</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="mainmenu__item menu-item-has-children megamenu-holder">
                                                    <c:url var="hotDeal" value="hotDealMenu.do"/>
                                                    <a href="${hotDeal }" class="mainmenu__link">
                                                        <span class="mm-text">핫딜</span>
                                                    </a>
                                                    <ul class="megamenu">
                                                        <li>
                                                            <a class="megamenu-title" href="#">
                                                                <span class="mm-text">Shop Grid</span>
                                                            </a>
                                                            <ul>
                                                                <li>
                                                                    <a href="shop-fullwidth.html">
                                                                        <span class="mm-text">Full Width</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="shop.html">
                                                                        <span class="mm-text">Left Sidebar</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="shop-right-sidebar.html">
                                                                        <span class="mm-text">Right Sidebar</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="shop-three-columns.html">
                                                                        <span class="mm-text">Three Columns</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="shop-four-columns.html">
                                                                        <span class="mm-text">Four Columns</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <a class="megamenu-title" href="#">
                                                                <span class="mm-text">Shop List</span>
                                                            </a>
                                                            <ul> 
                                                                <li>
                                                                    <a href="shop-list.html">
                                                                        <span class="mm-text">Full Width</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="shop-list-sidebar.html">
                                                                        <span class="mm-text">Left Sidebar</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="shop-list-right-sidebar.html">
                                                                        <span class="mm-text">Right Sidebar</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <a class="megamenu-title" href="#">
                                                                <span class="mm-text">Product Details</span>
                                                            </a>
                                                            <ul>
                                                                <li>
                                                                    <a href="product-details.html">
                                                                        <span class="mm-text">Tab Style 1</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="product-details-tab-style-2.html">
                                                                        <span class="mm-text">Tab Style 2</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="product-details-tab-style-3.html">
                                                                        <span class="mm-text">Tab Style 3</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="product-details-gallery-left.html">
                                                                        <span class="mm-text">Gallery Left</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="product-details-gallery-right.html">
                                                                        <span class="mm-text">Gallery Right</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="product-details-sticky-left.html">
                                                                        <span class="mm-text">Sticky Left</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <a class="megamenu-title" href="#">
                                                                <span class="mm-text">Product Details</span>
                                                            </a>
                                                            <ul>
                                                                <li>
                                                                    <a href="product-details-sticky-right.html">
                                                                        <span class="mm-text">Sticky Right</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="product-details-slider-box.html">
                                                                        <span class="mm-text">Slider Box</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="product-details-slider-full-width.html">
                                                                        <span class="mm-text">Slider Box Full Width</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="product-details-affiliate.html">
                                                                        <span class="mm-text">Affiliate Proudct</span>
                                                                    </a>
                                                                </li>                                                    
                                                                <li>
                                                                    <a href="product-details-variable.html">
                                                                        <span class="mm-text">Variable Proudct</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="product-details-group.html">
                                                                        <span class="mm-text">Group Product</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="mainmenu__item menu-item-has-children">
                                                    <c:url var="ttang" value="ttangMain.do"/>
                                                    <a href="${ttang }" class="mainmenu__link">
                                                        <span class="mm-text">떙처리</span>
                                                    </a>
                                                    <ul class="sub-menu">
                                                        <li class="menu-item-has-children">
                                                            <a href="#">
                                                                <span class="mm-text">Blog Grid</span>
                                                            </a>
                                                            <ul class="sub-menu">
                                                                <li>
                                                                    <a href="blog-left-sidebar.html">
                                                                        <span class="mm-text">Left Sidebar</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="blog.html">
                                                                        <span class="mm-text">Right Sidebar</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="blog-01-column.html">
                                                                        <span class="mm-text">One Column</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="blog-02-columns.html">
                                                                        <span class="mm-text">Two Columns</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="blog-03-columns.html">
                                                                        <span class="mm-text">Three Columns</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li class="menu-item-has-children">
                                                            <a href=""><span class="mm-text">Blog Details</span></a>
                                                            <ul class="sub-menu">
                                                                <li>
                                                                    <a href="blog-details-image.html">
                                                                        <span class="mm-text">Image Post</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="blog-details-audio.html">
                                                                        <span class="mm-text">Audio Post</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="blog-details-video.html">
                                                                        <span class="mm-text">Video Post</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="blog-details-gallery.html">
                                                                        <span class="mm-text">Gallery Post</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="mainmenu__item menu-item-has-children">
                                                    <a href="#" class="mainmenu__link">
                                                        <span class="mm-text">Pages</span>
                                                    </a>
                                                    <ul class="sub-menu">
                                                        <li>
                                                            <a href="my-account.html">
                                                                <span class="mm-text">My Account</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="checkout.html">
                                                                <span class="mm-text">Checkout</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="cart.html">
                                                                <span class="mm-text">Cart</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="compare.html">
                                                                <span class="mm-text">Compare</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="order-tracking.html">
                                                                <span class="mm-text">Track Order</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="wishlist.html">
                                                                <span class="mm-text">Wishlist</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="mainmenu__item">
                                                    <a href="contact-us.html" class="mainmenu__link">
                                                        <span class="mm-text">Contact Us</span>
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
	                                               </div>                                                </div>
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
        </div>
        <!-- Header End -->
        
        <!-- ************************* JS Files ************************* -->

       <!-- jQuery JS -->
       <script src="resources/assets/js/vendor.js"></script>
   
       <!-- Main JS -->
       <script src="resources/assets/js/main.js"></script>
</body>
</html>