<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>사이트 소개</title>
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


        <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-image ptb--80" data-bg-image="assets/img/bg/page_title_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">바이로컬</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>Buylocal</span></li>
                            <li class="current"><span>사이트소개</span></li>
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
                                            <div class="blog__media">
                                                <figure class="image">
                                                    <img src="assets/img/blog/buylocal1.jpg" alt="로고" class="w-100">
                                                    <a href="#" class="item-overlay"></a>
                                                </figure>
                                            </div>
                                            <div class="blog__info">
                                                <h2 class="blog__title"><a href="#">지역경제살리기 홀리몰리의 바이로컬입니다.</a></h2>
                                                <div class="blog__desc">
                                                    <p>지역소상인과 소비자가 상생하는 신개념 지역경제활성화 유통 플랫폼</p>
                                                </div>
                                                <!-- <a href="blog-details-image.html" class="read-more-btn">Read More</a> -->
                                            </div>
                                        </div>
                                    </article>                                
                                </div>
                                <div class="col-12 mb--45">
                                    <article class="blog format-gallery">
                                        <div class="blog__inner">
                                            <div class="blog__media">
                                                <div class="element-carousel" data-slick-options='{
                                                    "slidesToShow": 1,
                                                    "slidesToScroll": 1,
                                                    "autoplay": true,
                                                    "autoplaySpeed": 1500
                                                }'>
                                                    <div class="item">
                                                        <img src="assets/img/blog/introduction1-800x561.jpg" alt="소개" class="w-100">
                                                        <a href="#" class="item-overlay"></a>
                                                    </div> 
                                                    <div class="item">
                                                        <img src="assets/img/blog/introduction2-800x561.jpg" alt="소개" class="w-100">
                                                        <a href="#" class="item-overlay"></a>
                                                    </div> 
                                                    <div class="item">
                                                        <img src="assets/img/blog/introduction3-800x561.jpg" alt="소개" class="w-100">
                                                        <a href="#" class="item-overlay"></a>
                                                    </div>                 
                                                </div>
                                            </div>
                                            <div class="blog__info">
                                                <h2 class="blog__title"><a href="blog-details-gallery.html">There are many variations of passages of Lorem.</a></h2>
                                                <div class="blog__meta">
                                                    <span class="posted-on">13 April, 2019</span>
                                                    <span class="posted-by"><span>By: </span><a href="blog-details-gallery.html">Robert Joe</a></span>
                                                </div>
                                                <div class="blog__desc">
                                                    <p>Financial services must tie these three factors together – customer experience, best practices and reliability</p>
                                                </div>
                                                <a href="blog-details-gallery.html" class="read-more-btn">Read More</a>
                                            </div>
                                        </div>
                                    </article>                                   
                                </div>
                                <div class="col-12 mb--45">
                                    <article class="blog">
                                        <div class="blog__inner">
                                            <div class="blog__media">
                                                <figure class="image">
                                                    <img src="assets/img/blog/reference1-800x561.jpg" alt="유사사이트분석" class="w-100">
                                                    <a href="#" class="item-overlay"></a>
                                                </figure>
                                                <figure class="image">
                                                    <img src="assets/img/blog/reference2-800x561.jpg" alt="유사사이트분석" class="w-100">
                                                    <a href="#" class="item-overlay"></a>
                                                </figure>
                                            </div>
                                            <div class="blog__info">
                                                <h2 class="blog__title"><a href="blog-details-image.html">There are many variations of passages of Lorem.</a></h2>
                                                <div class="blog__meta">
                                                    <span class="posted-on">13 April, 2019</span>
                                                    <span class="posted-by"><span>By: </span><a href="blog-details-image.html">Robert Joe</a></span>
                                                </div>
                                                <div class="blog__desc">
                                                    <p>Financial services must tie these three factors together – customer experience, best practices and reliability</p>
                                                </div>
                                                <a href="blog-details-image.html" class="read-more-btn">Read More</a>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                         
                            
                        </div>
                        <div class="col-lg-3 order-lg-1">
                            <div class="blog-sidebar pr--15 pr-lg--0">
                                <div class="bl-widget author">
                                    <div class="inner">
                                        <div class="thumb">
                                            <img src="assets/img/others/team-04.jpg" alt="Author Images">
                                        </div>
                                        <div class="info">
                                            <h5 class="mb--5">Ayo Burion</h5>
                                            <p class="degne">UI/ Web Designer</p>
                                            <p class="mb--25">An Affrotable world wide business service It is</p>
                                            <ul class="social mb--20">
                                                <li class="social__item">
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
                                                </li>
                                            </ul>
                                            <div class="autor-meta">
                                                <span>Articles <strong>84</strong></span>
                                                <span>Comments <strong>490</strong></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="bl-widget post mt--50">
                                    <div class="inner">
                                        <h5 class="title">Top News</h5>
                                        <ul class="post-list">
                                            <li>
                                                <a href="#">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</a>
                                                <span><i class="fa fa-clock-o"></i> 3 Days Ago</span>
                                            </li>
                                            <li>
                                                <a href="#">There are many variations of passages of Lorem Ipsum available, </a>
                                                <span><i class="fa fa-clock-o"></i> 8 Days Ago</span>
                                            </li>
                                            <li>
                                                <a href="#">Lorem Ipsum is simply dummy text of the printing.</a>
                                                <span><i class="fa fa-clock-o"></i> 4 Days Ago</span>
                                            </li>
                                            <li>
                                                <a href="#">Sed ut perspiciatis unde omnis iste natus error.</a>
                                                <span><i class="fa fa-clock-o"></i> 6 Days Ago</span>
                                            </li>
                                            <li>
                                                <a href="#">Lorem Ipsum is simply dummy text.</a>
                                                <span><i class="fa fa-clock-o"></i> 5 Days Ago</span>
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
                    </div>
                </div>
            </div>
        </main>
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
    <script src="assets/js/vendor.js"></script>

    <!-- Main JS -->
    <script src="assets/js/main.js"></script>
</body>

</html>