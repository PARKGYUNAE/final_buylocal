<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Beck - Furniture eCommerce Bootstrap 4 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicons -->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="assets/img/icon.png">

    <!-- ************************* CSS Files ************************* -->

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="assets/css/vendor.css">

    <!-- style css -->
    <link rel="stylesheet" href="assets/css/main.css">

    <!--All Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,700,900|Abril+Fatface' rel='stylesheet' type='text/css'>
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
                                            <a href="index.html" class="logo--normal">
                                                <img src="assets/img/logo/logo.png" alt="Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="header__main-center">
                                        <nav class="main-navigation text-center d-none d-lg-block">
                                            <ul class="mainmenu">
                                                <li class="mainmenu__item menu-item-has-children">
                                                    <a href="index.html" class="mainmenu__link">
                                                        <span class="mm-text">바이로컬</span>
                                                    </a>
                                                    <ul class="sub-menu">
                                                        <li>
                                                            <a href="index.html">
                                                                <span class="mm-text">사이트 소개</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="index-02.html">
                                                                <span class="mm-text">홀리몰리</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="mainmenu__item menu-item-has-children megamenu-holder">
                                                    <a href="shop.html" class="mainmenu__link">
                                                        <span class="mm-text">핫딜</span>
                                                    </a>
                                                    <ul class="megamenu">
                                                        <li>
                                                           <!--  <a class="megamenu-title" href="#">
                                                                <span class="mm-text">카테고리1</span>
                                                            </a> -->
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
                                                            <!-- <a class="megamenu-title" href="#">
                                                              <span class="mm-text">카테고리2</span> 
                                                            </a> -->
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
                                                    <a href="" class="mainmenu__link">
                                                        <span class="mm-text">땡처리</span>
                                                    </a>
                                                    <ul class="sub-menu">
                                                        <li class="menu-item-has-children">
                                            	            <c:url var="ttang" value="ttangMain.do"/>	
                                                            <a title="ttang" href="${ttang}">
                                                                <span class="mm-text">식품류</span>
                                                            </a>
                                                            <ul class="sub-menu">
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">한식</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">중식</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">일식</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">양식</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">커피/제과</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">기타</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li class="menu-item-has-children">
                                                            <a href=""><span class="mm-text">비식품류</span></a>
                                                            <ul class="sub-menu">
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">비식품1</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">비식품2</span>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="mm-text">비식품3</span>
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
                                                <div class="header-toolbar__item header-toolbar--minicart-btn">
                                                    <a href="#miniCart" class="header-toolbar__btn toolbar-btn">
                                                        <i class="la la-shopping-cart"></i>
                                                        <span>01</span>
                                                    </a>
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
                <p>검색어를 입력하세요</p>
                <form class="searchform">
                    <input type="text" name="popup-search" id="popup-search" class="searchform__input" placeholder="지역, 상품, 업체 등 을 검색해보세요">
                    <button type="submit" class="searchform__submit"><i class="la la-search"></i></button>
                </form>
            </div>
        </div>
        
	</div>
	
</body>
</html>