<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
 
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>바이로컬</title>
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
                                                    <a href="${introduction}" class="mainmenu_link">
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
                                                    <c:url var="advertisementForm" value="advertisementForm.do"/>
                                                    <c:url var="insertProductForm" value="insertProductForm.do"/>
                                                    <a href="${advertisement}" class="mainmenu__link">
                                                        <span class="mm-text">신청하기</span>
                                                    </a>
                                                  <ul class="sub-menu">
                                                        <li class="menu-item-has-children">
                                                            <li>
                                                                <a title="이벤트/광고 신청" href="${advertisementForm}">
                                                                    <span class="mm-text">이벤트/광고 신청</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a title="상품 신청" href="${insertProductForm}">
                                                                    <span class="mm-text">상품 신청</span>
                                                                </a>
                                                            </li>
                                                   </ul>
                                                 </li>
                                                  <li class="mainmenu__item menu-item-has-children">
                                                    <c:url var="FAQ" value="FAQ.do"/>
                                                    <c:url var="QNAform" value="QNAform.do"/>
                                                    <a href="${FAQ}" class="mainmenu__link">
                                                        <span class="mm-text">고객센터</span>
                                                    </a>
                                                  <ul class="sub-menu">
                                                        <li class="menu-item-has-children">
                                                            <li>
                                                                <a title="FAQ" href="${FAQ}">
                                                                    <span class="mm-text">FAQ</span>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a title="QNA" href="${QNAform}">
                                                                    <span class="mm-text">QNA</span>
                                                                </a>
                                                            </li>
                                                   </ul>
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
                                                     <c:url var="qnaCount" value="qnaCount.do"/>
                                                    <a href="${ qnaCount }" class="header-toolbar__btn toolbar-btn1">
                                                        <i class="la la-wrench"></i>
                                                    </a>
                                                    </c:if>
                                                </div>
                                                <div class="header-toolbar__item header-toolbar--minicart-btn">
                                                	<c:if test="${ !empty sessionScope.loginUser }">
                                                	<c:url var="logout" value="logout.do"/>
                                                    <a href="${ logout }" class="header-toolbar__btn toolbar-btn1">
                                                        <i class="la la-power-off"></i>
                                                    </a>
                                                    </c:if>
                                                </div>
                                                <div class="header-toolbar__item header-toolbar--minicart-btn">
                                                	<c:if test="${ !empty sessionScope.loginUser }">
                                                	<c:url var="myFavorite" value="myFavorite.do"/>
                                                    <a href="${ myFavorite }" class="header-toolbar__btn toolbar-btn1">
                                                        <i class="la la-heart-o"></i>
                                                    </a>
                                                    </c:if>
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
                                                        	<c:url var="userLogin" value="userLogin.do"/>	                                                    <c:url var="userLogin" value="userLogin.do"/>
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

        <!-- Main Content Wrapper Start -->
        <main class="main-content-wrapper">
            <!-- Slider area Start -->
            <section class="homepage-slider mb--75 mb-md--55">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="element-carousel slick-right-bottom"
                            data-slick-options='{
                                "slidesToShow": 1, 
                                "arrows": true,
                                "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "la la-arrow-left" },
                                "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "la la-arrow-right" }
                            }' 
                            data-slick-responsive='[{"breakpoint": 768, "settings": {"arrows": false}}]'>
                                <div class="item">
                                    <div class="single-slide d-flex align-items-center bg-color" data-bg-color="#dbf3f2">
                                        <div class="row align-items-center no-gutters w-100">
                                            <div class="col-xl-7 col-md-6 mb-sm--50">
                                                <figure data-animation="fadeInUp" data-duration=".3s" data-delay=".3s" class="plr--15">
                                                    <img src="resources/assets/img/slider/slider-01-img-01.png" alt="Slider O1 image" class="mx-auto">
                                                </figure>
                                            </div>
                                            <div class="col-md-6 col-lg-5 offset-lg-1 offset-xl-0">
                                                <div class="slider-content">
                                                    <div class="slider-content__text mb--40 mb-md--30">
                                                        <p class="mb--15" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">#New Treand</p>
                                                        <p class="mb--20" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">Enlight your world. Make yourself more bright.</p>
                                                        <h1 class="heading__primary lh-pt7" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">Abotar Lighting</h1>
                                                    </div>
                                                    <div class="slider-content__btn">
                                                        <a href="#" class="btn btn-outline btn-brw-2" data-animation="fadeInUp" data-duration=".3s" data-delay=".6s">Shop Now</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="single-slide d-flex align-items-center bg-color" data-bg-color="#dbf3f2">
                                        <div class="row align-items-center no-gutters w-100">
                                            <div class="col-xl-6 col-md-6 mb-sm--50 order-md-2">
                                                <figure data-animation="fadeInUp" data-duration=".3s" data-delay=".3s" class="pl-15 pr--60">
                                                    <img src="resources/assets/img/slider/slider-02-img-01.png" alt="Slider O1 image" class="mx-auto">
                                                </figure>
                                            </div>
                                            <div class="col-md-5 col-lg-5 offset-md-1 order-md-1">
                                                <div class="slider-content">
                                                    <div class="slider-content__text border-color-2 mb--40 mb-md--30">
                                                        <p class="mb--15" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">#New Treand</p>
                                                        <p class="mb--20" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">Enlight your world. Make yourself more bright.</p>
                                                        <h1 class="heading__primary lh-pt7" data-animation="fadeInUp" data-duration=".3s" data-delay=".3s">Abotar Lighting</h1>
                                                    </div>
                                                    <div class="slider-content__btn">
                                                        <a href="#" class="btn btn-outline btn-brw-2 btn-brc-2" data-animation="fadeInUp" data-duration=".3s" data-delay=".6s">Shop Now</a>
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
            </section>
            <!-- Slider area End -->
            
            <!-- Top Sale Area Start -->
            <div class="container-fluid" style="border:1px solid red; height: 400px; width: 500px">
                <div class="container">
                  	실시간 검색어
                </div>
            </div>
            <!-- Top Sale Area End -->


            <!-- Product Tab Area Start -->
            <section class="product-tab-area mb--30 mb-md--10">
                <div class="container">
                    <div class="row mb--28 mb-md--18 mb-sm--33">
                        <div class="col-md-3 text-md-left text-center">
                            <h2>핫딜</h2>
                        </div>
                        <div class="col-md-9">
                            <div class="tab-style-1">
                                <div class="nav nav-tabs justify-content-md-end justify-content-center" id="product-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="new-all-tab" data-toggle="tab" href="#new-all" role="tab" aria-controls="new-all" aria-selected="true">
                                        <span class="nav-text">더보기</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="tab-content" id="product-tab-content">
                                <div class="tab-pane fade show active" id="new-all" role="tabpanel" aria-labelledby="new-all-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="new-price">
                                                                    <span class="money">$150</span>
                                                                </span>
                                                                <span class="old-price">
                                                                    <span class="money">$200</span>
                                                                </span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-06-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-09-270x300.png" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-wooden" role="tabpanel" aria-labelledby="new-wooden-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-01-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-06-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-furnished" role="tabpanel" aria-labelledby="new-furnished-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-02-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-01-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-table" role="tabpanel" aria-labelledby="new-table-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-10-270x300.png" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
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
                </div>
            </section>
            <!-- Product Tab Area End -->
            <!-- Product Tab Area Start -->
            <section class="product-tab-area mb--30 mb-md--10">
                <div class="container">
                    <div class="row mb--28 mb-md--18 mb-sm--33">
                        <div class="col-md-3 text-md-left text-center">
                            <h2>땡처리</h2>
                        </div>
                        <div class="col-md-9">
                            <div class="tab-style-1">
                                <div class="nav nav-tabs justify-content-md-end justify-content-center" id="product-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="new-all-tab" data-toggle="tab" href="#new-all" role="tab" aria-controls="new-all" aria-selected="true">
                                        <span class="nav-text">더보기</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="tab-content" id="product-tab-content">
                                <div class="tab-pane fade show active" id="new-all" role="tabpanel" aria-labelledby="new-all-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="new-price">
                                                                    <span class="money">$150</span>
                                                                </span>
                                                                <span class="old-price">
                                                                    <span class="money">$200</span>
                                                                </span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-06-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-09-270x300.png" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-wooden" role="tabpanel" aria-labelledby="new-wooden-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-01-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-06-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-furnished" role="tabpanel" aria-labelledby="new-furnished-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-02-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-01-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-table" role="tabpanel" aria-labelledby="new-table-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-10-270x300.png" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
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
                </div>
            </section>
            <!-- Product Tab Area End -->
            <section class="product-tab-area mb--30 mb-md--10">
                <div class="container">
                    <div class="row mb--28 mb-md--18 mb-sm--33">
                        <div class="col-md-3 text-md-left text-center">
                            <h2>나눔게시판</h2>
                        </div>
                        <div class="col-md-9">
                            <div class="tab-style-1">
                                <div class="nav nav-tabs justify-content-md-end justify-content-center" id="product-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="new-all-tab" data-toggle="tab" href="#new-all" role="tab" aria-controls="new-all" aria-selected="true">
                                        <span class="nav-text">더보기</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="tab-content" id="product-tab-content">
                                <div class="tab-pane fade show active" id="new-all" role="tabpanel" aria-labelledby="new-all-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="new-price">
                                                                    <span class="money">$150</span>
                                                                </span>
                                                                <span class="old-price">
                                                                    <span class="money">$200</span>
                                                                </span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-06-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-09-270x300.png" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-wooden" role="tabpanel" aria-labelledby="new-wooden-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-01-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-06-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-furnished" role="tabpanel" aria-labelledby="new-furnished-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-02-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-01-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="new-table" role="tabpanel" aria-labelledby="new-table-tab">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-10-270x300.png" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-sm-6 mb--45">
                                            <div class="ft-product HTfadeInUp">
                                                <div class="product-inner">
                                                    <div class="product-image">
                                                        <figure class="product-image--holder">
                                                            <img src="resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                        </figure>
                                                        <a href="${hotDealDetail}" class="product-overlay"></a>
                                                        <div class="product-action">
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                                <i class="la la-eye"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-heart-o"></i>
                                                            </a>
                                                            <a href="${hotDealWishList}" class="action-btn">
                                                                <i class="la la-repeat"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <div class="product-category">
                                                            <a href="${hotDealDetail}">Chair</a>
                                                        </div>
                                                        <h3 class="product-title"><a href="${hotDealDetail}">Golden Easy Spot Chair.</a></h3>
                                                        <div class="product-info-bottom">
                                                            <div class="product-price-wrapper">
                                                                <span class="money">$150</span>
                                                            </div>
                                                            <a href="${hotDealBuyForm}" class="add-to-cart pr--15">
                                                                <i class="la la-plus"></i>
                                                                <span>Add To Cart</span>
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
                </div>
            </section>
            <!-- Product Tab Area End -->
			<div class="container-fluid" style="height: 400px;">
                <div class="container" style="height:100%">
                  	<div class="row" style="height:100%">
                  		<div style="border:1px solid black; height:100%; width:50%">
                  			공지사항
                  		</div>
                  		<div style="border:1px solid black; height:100%; width:50%">
                  			QNA
                  		</div>
                  	</div>
                </div>
            </div>
            
        
        </main>
        <!-- Main Content Wrapper End -->



 <!-- OffCanvas Menu Start -->
 <!-- 수정예정 -->
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
                                            <a href="${hotDealDetail}">Tab Style 1</a>
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
                                    <a href="${hotDealBuyForm}">Cart</a>
                                </li>
                                <li>
                                    <a href="compare.html">Compare</a>
                                </li>
                                <li>
                                    <a href="order-tracking.html">Track Order</a>
                                </li>
                                <li>
                                    <a href="${hotDealWishList}">Wishlist</a>
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
                                    <img src="resources/assets/img/products/prod-01-100x100.jpg" alt="products">
                                </div>
                                <div class="mini-cart__product-content">
                                    <a class="mini-cart__product-title" href="${hotDealDetail}">Golden Easy Spot Chair.</a>
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
                                    <a class="mini-cart__product-title" href="${hotDealDetail}">Golden Easy Spot Chair.</a>
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
                                    <a class="mini-cart__product-title" href="${hotDealDetail}">Golden Easy Spot Chair.</a>
                                    <span class="mini-cart__product-quantity">1 x $49.00</span>
                                </div>
                            </li>
                        </ul>
                        <div class="mini-cart__total">
                            <span>Subtotal</span>
                            <span class="ammount">$98.00</span>
                        </div>
                        <div class="mini-cart__buttons">
                            <a href="${hotDealBuyForm}" class="btn btn-fullwidth btn-bg-primary mb--20">View Cart</a>
                            <a href="checkout.html" class="btn btn-fullwidth btn-bg-primary">Checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </aside>
        <!-- Mini Cart End -->

        <!-- Searchform Popup Start -->
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
                                    <a href="${hotDealDetail}">
                                        <img src="resources/assets/img/products/prod-01.jpg" alt="Product Image" class="primary-image">
                                    </a>
                                </div>
                                <span class="product-badge sale">sale</span>
                            </div>
                            <div class="product-image">
                                <div class="product-image--holder">
                                    <a href="${hotDealDetail}">
                                        <img src="resources/assets/img/products/prod-02.jpg" alt="Product Image" class="primary-image">
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
                                <button type="button" class="btn btn-size-sm btn-shape-square" onclick="window.location.href='${hotDealBuyForm}'">
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
 

    <!-- ************************* JS Files ************************* -->

    <!-- jQuery JS -->
    <script src="resources/assets/js/vendor.js"></script>

    <!-- Main JS -->
    <script src="resources/assets/js/main.js"></script>
</body>

</html>