<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>땡처리게시판 - 상세</title>
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
    
    
    <style>
    
    table.type04 {
    border-collapse: separate;
    border-spacing: 1px;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
	  margin : 20px 10px;
	}
	table.type04 th {
	    width: 150px;
	    padding: 10px;
	    font-weight: bold;
	    vertical-align: top;
	    border-bottom: 1px solid #ccc;
	}
	table.type04 td {
	    width: 350px;
	    padding: 10px;
	    vertical-align: top;
	    border-bottom: 1px solid #ccc;
	}
    
    </style>
    
</head>

<body>
	<c:import url="../common/menubar.jsp"/>	

        <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-image ptb--80" data-bg-image="resources/assets/img/bg/page_title_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">땡처리 상품상세 페이지</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>땡처리게시판</span></li>
                            <li class="current"><span>상품상세페이지</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner pt--80 pt-md--60">
                <div class="container">
                <c:url var="wishList" value="ttangWishList.do"/>
				<c:url var="buyForm" value="ttangBuyForm.do"/>
                    <div class="row no-gutters mb--80 mb-md--57">
                        <div class="col-lg-7 product-main-image">
                            <div class="product-image">
                                <div class="product-gallery vertical-slide-nav">
                                
                                
                                    <div class="product-gallery__large-image mb-sm--30">
                                        <div class="product-gallery__wrapper">
                                            <div class="element-carousel main-slider image-popup"
                                            data-slick-options='{
                                                "slidesToShow": 1,
                                                "slidesToScroll": 1,
                                                "infinite": true,
                                                "arrows": false, 
                                                "asNavFor": ".nav-slider"
                                            }'>
                                                <figure class="product-gallery__image zoom">
                                                    <img src="resources/assets/img/products/prod-08-700x778.png" alt="Product">
                                                    <span class="product-badge sale">Sale</span>
                                                    <div class="product-gallery__actions">
                                                        <button class="action-btn btn-zoom-popup"><i class="la la-eye"></i></button>
                                                    </div>
                                                </figure>
                                                <figure class="product-gallery__image zoom">
                                                    <img src="resources/assets/img/products/prod-08-700x778.png" alt="Product">
                                                    <span class="product-badge sale">Sale</span>
                                                    <div class="product-gallery__actions">
                                                        <button class="action-btn btn-zoom-popup"><i class="la la-eye"></i></button>
                                                    </div>
                                                </figure>
                                                <figure class="product-gallery__image zoom">
                                                    <img src="resources/assets/img/products/prod-08-700x778.png" alt="Product">
                                                    <span class="product-badge sale">Sale</span>
                                                    <div class="product-gallery__actions">
                                                        <button class="action-btn btn-zoom-popup"><i class="la la-eye"></i></button>
                                                    </div>
                                                </figure>
                                                <figure class="product-gallery__image zoom">
                                                    <img src="resources/assets/img/products/prod-08-700x778.png" alt="Product">
                                                    <span class="product-badge sale">Sale</span>
                                                    <div class="product-gallery__actions">
                                                        <button class="action-btn btn-zoom-popup"><i class="la la-eye"></i></button>
                                                    </div>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                         
                                    
                                    <div class="product-gallery__nav-image">
                                        <div class="element-carousel nav-slider product-slide-nav slick-center-bottom" 
                                        data-slick-options='{
                                            "spaceBetween": 10,
                                            "slidesToShow": 3,
                                            "slidesToScroll": 1,
                                            "vertical": true,
                                            "swipe": true,
                                            "verticalSwiping": true,
                                            "infinite": true,
                                            "focusOnSelect": true,
                                            "asNavFor": ".main-slider",
                                            "arrows": true, 
                                            "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "la la-angle-up" },
                                            "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "la la-angle-down" }
                                        }'
                                        data-slick-responsive='[
                                            {
                                                "breakpoint":1200, 
                                                "settings": {
                                                    "slidesToShow": 2
                                                } 
                                            },
                                            {
                                                "breakpoint":992, 
                                                "settings": {
                                                    "slidesToShow": 3
                                                } 
                                            },
                                            {
                                                "breakpoint":767, 
                                                "settings": {
                                                    "slidesToShow": 4,
                                                    "vertical": false
                                                } 
                                            },
                                            {
                                                "breakpoint":575, 
                                                "settings": {
                                                    "slidesToShow": 3,
                                                    "vertical": false
                                                } 
                                            },
                                            {
                                                "breakpoint":480, 
                                                "settings": {
                                                    "slidesToShow": 2,
                                                    "vertical": false
                                                } 
                                            }
                                        ]'>
                                            <figure class="product-gallery__nav-image--single">
                                                <img src="resources/assets/img/products/prod-08-170x195.png" alt="Products">
                                            </figure>
                                            <figure class="product-gallery__nav-image--single">
                                                <img src="resources/assets/img/products/prod-08-170x195.png" alt="Products">
                                            </figure>
                                            <figure class="product-gallery__nav-image--single">
                                                <img src="resources/assets/img/products/prod-08-170x195.png" alt="Products">
                                            </figure>
                                            <figure class="product-gallery__nav-image--single">
                                                <img src="resources/assets/img/products/prod-08-170x195.png" alt="Products">
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 offset-xl-1 col-lg-5 product-main-details mt-md--50">
                            <div class="product-summary pl-lg--30 pl-md--0">
                                <div class="product-navigation text-right mb--20">
                                    <a href="#" class="prev"><i class="la la-angle-double-left"></i></a>
                                    <a href="#" class="next"><i class="la la-angle-double-right"></i></a>
                                </div>
                                <div class="product-rating d-flex mb--20">
                                    <div class="star-rating star-four">
                                        <span>Rated <strong class="rating">5.00</strong> out of 5</span>
                                    </div>
                                </div>

                                <h3 class="product-title mb--20">${ttangDetail.pTitle}</h3>
                                <p class="product-short-description mb--20">${ttangDetail.pInfoText}</p>
                                <div class="product-price-wrapper mb--25">
                                    <span class="money" style="text-decoration:line-through;">${ttangDetail.pOriginalPrice}</span>
                                    <span class="money" style="color:red;">${ttangDetail.pFinalPrice}</span>
                                </div>
                                <!-- 옵션 -->
                                <!-- <form action="#" class="variation-form mb--20">
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
                                    </div> -->
                                    <a href="" class="reset_variations">Clear</a>
                                </form>
                                <div class="product-action d-flex flex-sm-row align-items-sm-center flex-column align-items-start mb--30">
                                    <div class="quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30">
                                        <label class="quantity-label" for="qty">수량:</label>
                                        <div class="quantity">
                                            <input type="number" class="quantity-input" name="qty" id="qty" value="1" min="1">
                                        </div>
                                    </div>
                                    <button type="button" class="btn btn-shape-square btn-size-sm" onclick="window.location.href='${wishList}'">
                                        	찜
                                    </button>
                                    <button type="button" class="btn btn-shape-square btn-size-sm" onclick="window.location.href='${buyForm}'">
                                        	장바구니
                                    </button>                                    
                                </div>  
                                <div class="product-footer-meta">
                                    <p><span>Category:</span> 
                                    <!-- 카테고리 키워드 클릭 시, 검색하기 기능으로 연결 -->
                                        <a href="#">#감귤</a>,
                                        <a href="#">#한라봉</a>,
                                        <a href="#">#제철과일</a>   
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center mb--77 mb-md--57">
                        <div class="col-12">
                            <div class="tab-style-2">
                                <div class="nav nav-tabs mb--35 mb-sm--25" id="product-tab" role="tablist">
                                    <a class="nav-link active" id="nav-description-tab" data-toggle="tab" href="#nav-description" role="tab" aria-selected="true"> 
                                        <span>상품상세</span>
                                    </a>
                                    <a class="nav-link" id="nav-info-tab" data-toggle="tab" href="#nav-info" role="tab" aria-selected="true">
                                        <span>추가정보</span>
                                    </a>
                                    <a class="nav-link" id="nav-report-tab" data-toggle="tab" href="#nav-report" role="tab" aria-selected="true">
                                    	<span>신고하기</span>
                                    </a>
                                </div>
                                <!-- 상품 상세 -->
                                <div class="tab-content" id="product-tabContent">
                                    <div class="tab-pane fade show active" id="nav-description" role="tabpanel" aria-labelledby="nav-description-tab">
                                        <div class="product-description">
                                        	<h5>상품 상세</h5>
                                        	<p>* 땡처리 게시판은 별도의 상품문의 페이지가 제공되지 않습니다. <br>
                                        	기타 문의사항은 사업자 연락처를 통해 주시기 바랍니다.</p>
                                            <!-- 그림 삽입 -->
                                            <img src="resources/assets/img/products/prod-04-700x778.png" alt="products_information">
                                            
                                        </div>
                                    </div>
                                 <!-- 추가 정보 -->   
                                 <div class="tab-pane fade" id="nav-info" role="tabpanel" aria-labelledby="nav-info-tab">
                                        <div class="table-content table-responsive">
                                        	
                                        	
                                            <table class="type04" style="font-size:14px;">
												<h5>필수 표기정보</h5>
                                                <tbody>
                                                    <tr>
                                                        <th >용량/수량/크기</th>
                                                        <td >10 kg (박스포함)</td>
                                                        <th >생산자(수입자)</th>
                                                        <td >제주담은</td>
                                                    </tr>
                                                    <tr>
                                                        <th cols="1">원산지</th>
                                                        <td cols="1">${ttangDetail.pOrigin}</td>
                                                        <th cols="1">제조연월일</th>
                                                        <td cols="1">생산년도:2019<br>
                                                        	제조연월일:발송일 전 일주일 전후</td>
                                                    </tr>
                                                    <tr>
                                                        <th colspan="1">취급방법</th>
                                                        <td colspan="3">상온에 보관해주세요. (장기보관 시, 개별포장하여 보관해주세요)</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        	
                                            
                                            <br><br><br><br>                      
                                        
                                        	
                                        	<h5>판매자 정보</h5>
											<table class="type04" style="font-size:14px;">
                                                <tbody>
                                                    <tr>
                                                        <th cols="1">상호/대표자</th>
                                                        <td cols="1">제주담음/김지혜</td>
                                                        <th cols="1">사업자번호</th>
                                                        <td cols="1">460-95-00421</td>
                                                    </tr>
                                                    <tr>
                                                        <th cols="1">e-mail</th>
                                                        <td cols="1">inhane1010@naver.com</td>
                                                        <th cols="1">연락처</th>
                                                        <td cols="1">064-749-8675</td>
                                                    </tr>
                                                    <tr>
                                                        <th colspan="1">사업장 소재지</th>
                                                        <td colspan="3">제주특별자치도 제주시 돈내길 46 203호(이도일동, 고덕쉐르빌아파트)<br>
                                                        <img src="#" alt="사업장지도">
                                                        </td>
                                                        
                                                    </tr>
                                                </tbody>
                                            </table>                 
                                        
                                        </div>
                                    </div>
                                    
                                     <div class="tab-pane fade" id="nav-report" role="tabpanel" aria-labelledby="nav-report-tab">
                                        <div class="table-content table-responsive">
                                        
                                        	<p>신고 절차     
											지식재산권 침해 상품, 불법 혹은 부적격 상품, 부적절한 광고 내용 등 안전거래를 저해하는 상품이 확인될 경우, 신고하여 주시기 바랍니다. 신고 건은 아래의 절차에 따라 진행되며, 처리결과에 다소 시간이 걸릴 수 있습니다.
											
											<br><br>
											신고 접수 > 내용 심사 > 판매자 소명 요청 > 처리</p>
											
											<br><br>
                                            <form action="#" class="form pr--30">
                                                    <div class="form__group mb--10">
                                                        <label class="form__label d-block" for="title">상품명<span class="required">*</span></label>
                                                        <input type="text" name="title" id="title" class="form__input" readonly>
                                                    </div>
                                                    <div class="form__group mb--20">
                                                        <label class="form__label d-block" for="name">신고 유형<span class="required">*</span></label>
                                                        <select>
                                                        	<option>선택하세요</option>
                                                        	<option>지적재산권 침해</option>
                                                        	<option>허위과장광고</option>
                                                        	<option>미인증 등 관련법위반</option>
                                                        	<option>기타 불법물</option>
                                                        	<option>중복 상품</option>
                                                        	<option>상품정보 오류</option>
														</select>
                                                    </div>
                                                    <div class="form__group mb--10">
                                                        <label class="form__label d-block" for="title">신고 제목<span class="required">*</span></label>
                                                        <input type="text" name="title" id="title" class="form__input">
                                                    </div>
                                                    <div class="form__group mb--20">
                                                        <label class="form__label d-block" for="content">신고 내용<span class="required">*</span></label>
                                                        <input type="text" name="content" id="content" class="form__input">
                                                    </div>
                                   
                                                    <div class="form__group">
                                                        <div class="form-row">
                                                            <div class="col-12">
                                                                <input type="submit" value="제출하기" class="btn btn-size-md">
                                                            </div>
                                                        </div>
                                                    </div>
                                           </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb--75 mb-md--55">
                        <div class="col-12">
                            <div class="element-carousel slick-vertical-center" data-slick-options='{
                                "spaceBetween": 30,
                                "slidesToShow": 4,
                                "slidesToScroll": 1,
                                "arrows": true,
                                "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "la la-angle-double-left" },
                                "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "la la-angle-double-right" }
                            }'
                            data-slick-responsive= '[
                                {"breakpoint":1199, "settings": {
                                    "slidesToShow": 3
                                }},
                                {"breakpoint":991, "settings": {
                                    "slidesToShow": 2
                                }},
                                {"breakpoint":575, "settings": {
                                    "slidesToShow": 1
                                }}
                            ]'>
                                <div class="item">
                                    <div class="ft-product">
                                        <div class="product-inner">
                                            <div class="product-image">
                                                <figure class="product-image--holder">
                                                    <img src="resources/assets/img/products/prod-04-270x300.jpg" alt="Product">
                                                </figure>
                                                <a href="product-details.html" class="product-overlay"></a>
                                                <div class="product-action">
                                                    
                                                    <a href="wishlist.html" class="action-btn">
                                                        <i class="la la-heart-o"></i>
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
                                </div>
                                <div class="item">
                                    <div class="ft-product">
                                        <div class="product-inner">
                                            <div class="product-image">
                                                <figure class="product-image--holder">
                                                    <img src="resources/assets/img/products/prod-01-270x300.jpg" alt="Product">
                                                </figure>
                                                <a href="product-details.html" class="product-overlay"></a>
                                                <div class="product-action">
                                                    
                                                    <a href="wishlist.html" class="action-btn">
                                                        <i class="la la-heart-o"></i>
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
                                </div>
                                <div class="item">
                                    <div class="ft-product">
                                        <div class="product-inner">
                                            <div class="product-image">
                                                <figure class="product-image--holder">
                                                    <img src="resources/assets/img/products/prod-02-270x300.jpg" alt="Product">
                                                </figure>
                                                <a href="product-details.html" class="product-overlay"></a>
                                                <div class="product-action">
                                                    
                                                    <a href="wishlist.html" class="action-btn">
                                                        <i class="la la-heart-o"></i>
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
                                </div>
                                <div class="item">
                                    <div class="ft-product">
                                        <div class="product-inner">
                                            <div class="product-image">
                                                <figure class="product-image--holder">
                                                    <img src="resources/assets/img/products/prod-03-270x300.jpg" alt="Product">
                                                </figure>
                                                <a href="product-details.html" class="product-overlay"></a>
                                                <div class="product-action">
                                                    
                                                    <a href="wishlist.html" class="action-btn">
                                                        <i class="la la-heart-o"></i>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper End -->

     <c:import url="../common/footer.jsp"/>



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