<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html> 
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>땡처리게시판 - 메인</title>
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
</head>

<body>
	<c:import url="../common/menubar.jsp"/>

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
     

        <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-image ptb--80" data-bg-image="assets/img/bg/page_title_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">땡처리게시판</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>식품류</span></li>
                            <li class="current"><span>기타</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div  class="main-content-wrapper">
            <div class="shop-page-wrapper ptb--80">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-9 col-lg-8 order-lg-2 mb-md--50">
                            <div class="shop-toolbar mb--50">
                                <div class="row align-items-center">
                                    <div class="col-md-5 mb-sm--30 mb-xs--10">
                                        <div class="shop-toolbar__left">
                                            <div class="product-ordering">
                                                <select class="product-ordering__select nice-select">
                                                    <option value="0">기본정렬순</option>
                                                    <option value="1">관련순</option>
                                                    <option value="2">이름순, ㄱ-ㅎ</option>
                                                    <option value="3">이름순, ㅎ-ㄱ</option>
                                                    <option value="4">낮은가격순</option>
                                                    <option value="5">높은가격순</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="shop-toolbar__right d-flex justify-content-md-end justify-content-start flex-sm-row flex-column">
                                            <p class="product-pages">총 888개의 상품이 있습니다.</p>
                                            <div class="product-view-mode ml--50 ml-xs--0">
                                                <a class="active" href="#" data-target="grid">
                                                    <img src="assets/img/icons/grid.png" alt="Grid">
                                                </a>
                                                <a href="#" data-target="list">
                                                    <img src="assets/img/icons/list.png" alt="Grid">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="shop-products">
                                <div class="row">
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="ft-product">
                                            <div class="product-inner">
                                                <div class="product-image">
                                                    <figure class="product-image--holder">
                                                        <img src="assets/img/products/jeju_tangerine/th1_jeju_tang-270x300.jpg" alt="제주감귤">
                                                    </figure>
                                                    <c:url var="ttangD" value="ttangDetail.do"/>
                                                    <a href="${ttangD}" class="product-overlay"></a>
                                                    <div class="product-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                            <i class="la la-eye"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-category">
                                                        <a href="${ttangD}">맛있는 제주감귤 10KG</a>
                                                    </div>
                                                    <h3 class="product-title"><a href="${ttangD}">제주도 남쪽 해안에서 자란 건강하고 맛있는 귤!</a></h3>
                                                    <div class="product-info-bottom">
                                                        <div class="product-price-wrapper">
                                                            <span class="money">9,900원</span>
                                                        </div>
                                                        <a href="#" class="add-to-cart pr--15">
                                                            <i class="la la-plus"></i>
                                                            <span>장바구니</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ft-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/jeju_tangerine/th1_jeju_tang-270x300.jpg" alt="제주감귤">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="la la-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="${ttangD}">맛있는 제주감귤 10KG</a>
                                                    </h3>
                                                    <div class="ft-product-action-list mb--20">
                                                    	<!-- 옵션 -->
                                                       <!--  <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div> -->
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money" style="text-decoration:line-through;">12,000원</span>
                                                        <span class="money">9,900원</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
농가의 환경은 감율의 당도에 큰 영향을 미쳐요. 귤은 일정한 일조량은 물론, 건강한 토양, 그리고 바다와 가까울수록 산도가 적절히 빠져 최고의 맛을 낼 수 있는데요, 우리 감귤은 제주도 남쪽 해안가에 위치하여 이 모든 조건을 만족하는 건강한 환경에서 자라난 귤이랍니다!                                                   
													 </p>  
                                                    <div class="ft-product-action-list d-flex align-items-center">
                                                        <a href="cart.html" class="btn btn-size-md">장바구니</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="ft-product">
                                            <div class="product-inner">
                                                <div class="product-image">
                                                    <figure class="product-image--holder">
                                                        <img src="assets/img/products/prod-01-270x300.jpg" alt="Product">
                                                    </figure>
                                                    <a href="product-details.html" class="product-overlay"></a>
                                                    <div class="product-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                            <i class="la la-eye"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-category">
                                                        <a href="product-details.html">Chair</a>
                                                    </div>
                                                    <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                    <div class="product-info-bottom">
                                                        <div class="product-price-wrapper">
                                                            <span class="money">$150</span>
                                                        </div>
                                                        <a href="cart.html" class="add-to-cart pr--15">
                                                            <i class="la la-plus"></i>
                                                            <span>Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ft-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-01-270x300.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="la la-eye"></i>
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
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="ft-product-action-list d-flex align-items-center">
                                                        <a href="cart.html" class="btn btn-size-md">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="ft-product">
                                            <div class="product-inner">
                                                <div class="product-image">
                                                    <figure class="product-image--holder">
                                                        <img src="assets/img/products/prod-02-270x300.jpg" alt="Product">
                                                    </figure>
                                                    <a href="product-details.html" class="product-overlay"></a>
                                                    <div class="product-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                            <i class="la la-eye"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-category">
                                                        <a href="product-details.html">Chair</a>
                                                    </div>
                                                    <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                    <div class="product-info-bottom">
                                                        <div class="product-price-wrapper">
                                                            <span class="money">$150</span>
                                                        </div>
                                                        <a href="cart.html" class="add-to-cart pr--15">
                                                            <i class="la la-plus"></i>
                                                            <span>Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ft-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-02-270x300.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="la la-eye"></i>
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
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="ft-product-action-list d-flex align-items-center">
                                                        <a href="cart.html" class="btn btn-size-md">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="ft-product">
                                            <div class="product-inner">
                                                <div class="product-image">
                                                    <figure class="product-image--holder">
                                                        <img src="assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                    </figure>
                                                    <a href="product-details.html" class="product-overlay"></a>
                                                    <div class="product-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                            <i class="la la-eye"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-category">
                                                        <a href="product-details.html">Chair</a>
                                                    </div>
                                                    <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                    <div class="product-info-bottom">
                                                        <div class="product-price-wrapper">
                                                            <span class="money">$150</span>
                                                        </div>
                                                        <a href="cart.html" class="add-to-cart pr--15">
                                                            <i class="la la-plus"></i>
                                                            <span>Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ft-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-03-270x300.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="la la-eye"></i>
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
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="ft-product-action-list d-flex align-items-center">
                                                        <a href="cart.html" class="btn btn-size-md">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="ft-product">
                                            <div class="product-inner">
                                                <div class="product-image">
                                                    <figure class="product-image--holder">
                                                        <img src="assets/img/products/prod-05-270x300.jpg" alt="Product">
                                                    </figure>
                                                    <a href="product-details.html" class="product-overlay"></a>
                                                    <div class="product-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                            <i class="la la-eye"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-category">
                                                        <a href="product-details.html">Chair</a>
                                                    </div>
                                                    <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                    <div class="product-info-bottom">
                                                        <div class="product-price-wrapper">
                                                            <span class="money">$150</span>
                                                        </div>
                                                        <a href="cart.html" class="add-to-cart pr--15">
                                                            <i class="la la-plus"></i>
                                                            <span>Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ft-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-05-270x300.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="la la-eye"></i>
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
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="ft-product-action-list d-flex align-items-center">
                                                        <a href="cart.html" class="btn btn-size-md">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="ft-product">
                                            <div class="product-inner">
                                                <div class="product-image">
                                                    <figure class="product-image--holder">
                                                        <img src="assets/img/products/prod-06-270x300.jpg" alt="Product">
                                                    </figure>
                                                    <a href="product-details.html" class="product-overlay"></a>
                                                    <div class="product-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                            <i class="la la-eye"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-category">
                                                        <a href="product-details.html">Chair</a>
                                                    </div>
                                                    <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                    <div class="product-info-bottom">
                                                        <div class="product-price-wrapper">
                                                            <span class="money">$150</span>
                                                        </div>
                                                        <a href="cart.html" class="add-to-cart pr--15">
                                                            <i class="la la-plus"></i>
                                                            <span>Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ft-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-06-270x300.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="la la-eye"></i>
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
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="ft-product-action-list d-flex align-items-center">
                                                        <a href="cart.html" class="btn btn-size-md">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="ft-product">
                                            <div class="product-inner">
                                                <div class="product-image">
                                                    <figure class="product-image--holder">
                                                        <img src="assets/img/products/prod-08-270x300.png" alt="Product">
                                                    </figure>
                                                    <a href="product-details.html" class="product-overlay"></a>
                                                    <div class="product-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                            <i class="la la-eye"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-category">
                                                        <a href="product-details.html">Chair</a>
                                                    </div>
                                                    <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                    <div class="product-info-bottom">
                                                        <div class="product-price-wrapper">
                                                            <span class="money">$150</span>
                                                        </div>
                                                        <a href="cart.html" class="add-to-cart pr--15">
                                                            <i class="la la-plus"></i>
                                                            <span>Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ft-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-08-270x300.png" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="la la-eye"></i>
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
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="ft-product-action-list d-flex align-items-center">
                                                        <a href="cart.html" class="btn btn-size-md">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="ft-product">
                                            <div class="product-inner">
                                                <div class="product-image">
                                                    <figure class="product-image--holder">
                                                        <img src="assets/img/products/prod-09-270x300.png" alt="Product">
                                                    </figure>
                                                    <a href="product-details.html" class="product-overlay"></a>
                                                    <div class="product-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                            <i class="la la-eye"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-category">
                                                        <a href="product-details.html">Chair</a>
                                                    </div>
                                                    <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                    <div class="product-info-bottom">
                                                        <div class="product-price-wrapper">
                                                            <span class="money">$150</span>
                                                        </div>
                                                        <a href="cart.html" class="add-to-cart pr--15">
                                                            <i class="la la-plus"></i>
                                                            <span>Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ft-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-09-270x300.png" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="la la-eye"></i>
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
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="ft-product-action-list d-flex align-items-center">
                                                        <a href="cart.html" class="btn btn-size-md">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="ft-product">
                                            <div class="product-inner">
                                                <div class="product-image">
                                                    <figure class="product-image--holder">
                                                        <img src="assets/img/products/prod-10-270x300.png" alt="Product">
                                                    </figure>
                                                    <a href="product-details.html" class="product-overlay"></a>
                                                    <div class="product-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn">
                                                            <i class="la la-eye"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-info">
                                                    <div class="product-category">
                                                        <a href="product-details.html">Chair</a>
                                                    </div>
                                                    <h3 class="product-title"><a href="product-details.html">Golden Easy Spot Chair.</a></h3>
                                                    <div class="product-info-bottom">
                                                        <div class="product-price-wrapper">
                                                            <span class="money">$150</span>
                                                        </div>
                                                        <a href="cart.html" class="add-to-cart pr--15">
                                                            <i class="la la-plus"></i>
                                                            <span>Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ft-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-10-270x300.png" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="la la-eye"></i>
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
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="ft-product-action-list d-flex align-items-center">
                                                        <a href="cart.html" class="btn btn-size-md">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="la la-repeat"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <nav class="pagination-wrap">
                                <ul class="pagination">
                                    <li><span class="page-number current">1</span></li>
                                    <li><a href="#" class="page-number">2</a></li>
                                    <li><span class="dot"></span></li>
                                    <li><span class="dot"></span></li>
                                    <li><span class="dot"></span></li>
                                    <li><a href="#" class="page-number">16</a></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-xl-3 col-lg-4 order-lg-1">
                            <aside class="shop-sidebar">
                                <div class="shop-widget mb--40">
                                    <h3 class="widget-title mb--25">Category</h3>
                                    <ul class="widget-list category-list">
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">한식</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">중식</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">일식</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">양식</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">커피/제과</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">기타</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- 컬러별 카테고라이징 -->
                                <!-- <div class="shop-widget mb--40">
                                    <h3 class="widget-title mb--30">Color</h3>
                                    <div class="widget-color">
                                        <a href="shop.html" class="red">Red</a>
                                        <a href="shop.html" class="pink">Pink</a>
                                        <a href="shop.html" class="black">black</a>
                                        <a href="shop.html" class="brown">brown</a>
                                        <a href="shop.html" class="blue">blue</a>
                                        <a href="shop.html" class="cholate">cholate</a>
                                        <a href="shop.html" class="copper">copper</a>
                                        <a href="shop.html" class="gray">grey</a>
                                    </div>
                                </div> -->
                                <!-- 가격순 카테고라이징 -->
                                <!-- <div class="shop-widget mb--40">
                                    <h3 class="widget-title mb--25">Price</h3>
                                    <ul class="widget-list price-list">
                                        <li>
                                            <a href="shop.html">
                                                <span>Low - Medium</span>
                                                <strong class="font-weight-medium">$10.00 - $45.00</strong>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span>Medium - High</span>
                                                <strong class="font-weight-medium">$45.00 - $60.00</strong>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span>High - Avobe</span>
                                                <strong class="font-weight-medium">$60.00 - $200</strong>
                                            </a>
                                        </li>
                                    </ul>
                                </div> -->
                                <!-- 브랜드별 카테고라이징 -->
                               <!--  <div class="shop-widget mb--40">
                                    <h3 class="widget-title mb--25">Brand</h3>
                                    <ul class="widget-list brand-list">
                                        <li>
                                            <a href="shop.html">
                                                <span>Walmart</span>
                                                <strong class="color--red font-weight-medium">10</strong>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span>Yellow</span>
                                                <strong class="color--red font-weight-medium">50</strong>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span>H &amp; M</span>
                                                <strong class="color--red font-weight-medium">46</strong>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span>Black &amp; White</span>
                                                <strong class="color--red font-weight-medium">46</strong>
                                            </a>
                                        </li>
                                    </ul>
                                </div> -->
                                <div class="shop-widget">
                                    <h3 class="widget-title mb--25">태그</h3>
                                    <div class="tagcloud">
                                    	<!-- 클릭시, 검색 가능하게 -->
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

    <c:import url="../common/footer.jsp"/>

 

<!--         Mini Cart Start
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
        Mini Cart End -->

        
        <!-- Searchform Popup End -->

		<!-- 미리보기(퀵모달) -->
       <%--  <!-- Qicuk View Modal Start -->
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
                                    <a href="${ttangD}">
                                        <img src="assets/img/products/jeju_tangerine/th1_jeju_tang-270x300.jpg" alt="제주감귤" class="primary-image">
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
        <!-- Qicuk View Modal End --> --%>

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
    <script src="assets/js/vendor.js"></script>

    <!-- Main JS -->
    <script src="assets/js/main.js"></script>
</body>

</html>