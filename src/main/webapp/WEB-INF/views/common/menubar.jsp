<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>
	<meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

	<title>바이 로컬</title>

	<!-- Standard Favicon -->
	<link rel="icon" type="image/x-icon" href="resources/assets/images//favicon.ico" />
	
	<!-- For iPhone 4 Retina display: -->
	<link rel="apple-touch-icon-precomposed" href="resources/assets/images//apple-touch-icon-114x114-precomposed.png">
	
	<!-- For iPad: -->
	<link rel="apple-touch-icon-precomposed" href="resources/assets/images//apple-touch-icon-72x72-precomposed.png">
	
	<!-- For iPhone: -->
	<link rel="apple-touch-icon-precomposed" href="resources/assets/images//apple-touch-icon-57x57-precomposed.png">	
	
	<!-- Library - Google Font Familys -->
	<link href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700%7cMontserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="resources/assets/revolution/css/settings.css">

	<!-- Library -->
    <link href="resources/assets/css/lib.css" rel="stylesheet">
	
	<!-- Custom - Common CSS -->	
	<link rel="stylesheet" href="resources/assets/css/rtl.css">
	<link rel="stylesheet" type="text/css" href="style.css">

	<!--[if lt IE 9]>
		<script src="js/html5/respond.min.js"></script>
    <![endif]-->
	
</head>

<body data-offset="200" data-spy="scroll" data-target=".ownavigation">
	<!-- Loader -->
	<div id="site-loader" class="load-complete">
		<div class="loader">
			<div class="line-scale"><div></div><div></div><div></div><div></div><div></div></div>
		</div>
	</div><!-- Loader /- -->
		
	<!-- Header Section -->
	<header class="container-fluid no-left-padding no-right-padding header_s header-fix header_s1">
	
		<!-- SidePanel -->
		<div id="slidepanel-1" class="slidepanel">
			<!-- Top Header -->
			<div class="container-fluid no-right-padding no-left-padding top-header">
				<!-- Container -->
				<div class="container">	
					<div class="row">
						<div class="col-lg-4 col-6">
							<h5>내 위치 : </h5>
						</div>
						<div class="col-lg-4 logo-block">
							<img src="resources/assets/images/mainlogo.jpeg"/>
							<!-- <a href="index.html" title="Logo">minimag</a> -->
						</div>
						<div class="col-lg-4 col-6">
							<ul class="top-right user-info">
								<li><a href="#search-box" data-toggle="collapse" class="search collapsed" title="Search"><i class="pe-7s-search sr-ic-open"></i><i class="pe-7s-close sr-ic-close"></i></a></li>
								<li class="dropdown">
									<a class="dropdown-toggle" href="#"><i class="pe-7s-user"></i></a>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="#" title="Sign In">Sign In</a></li>
										<li><a class="dropdown-item" href="#" title="Subscribe">Subscribe </a></li>
										<li><a class="dropdown-item" href="#" title="Log In">Log In</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div><!-- Container /- -->
			</div><!-- Top Header /- -->				
		</div><!-- SidePanel /- -->
		
		<!-- Menu Block -->
		<div class="container-fluid no-left-padding no-right-padding menu-block">
			<!-- Container -->
			<div class="container">				
				<nav class="navbar ownavigation navbar-expand-lg">
					<a class="navbar-brand" href="index.html">minimag</a>
					<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar1" aria-controls="navbar1" aria-expanded="false" aria-label="Toggle navigation">
						<i class="fa fa-bars"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbar2">
						<ul class="navbar-nav">							
							<c:url var="hotDealMenu" value="hotDealMenu.do"/>
							<c:url var="main" value="main.do"/>
							<li class="dropdown" id="all">
								<i class="ddl-switch fa fa-angle-down"></i>
								<a class="nav-link dropdown-toggle" title="Home" href="index.jsp">전체보기</a>
								<ul class="dropdown-menu">
								</ul>
							</li>
							<li class="dropdown" id="asdf">
								<i class="ddl-switch fa fa-angle-down"></i>
								<c:url var="ttang" value="ttangMain.do"/>
								<a class="nav-link dropdown-toggle" title="Posts" href="${ttang }">떙처리!</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="index-12.html" title="Home Food">Home Food</a></li>
									<li><a class="dropdown-item" href="index-13.html" title="Home Technology">Home Technology</a></li>
									<li><a class="dropdown-item" href="index-14.html" title="Home Beauty">Home Beauty</a></li>
									<li><a class="dropdown-item" href="index-15.html" title="Home Fashion">Home Fashion</a></li>
									<li><a class="dropdown-item" href="index-16.html" title="Home Travel">Home Travel</a></li>
									<li><a class="dropdown-item" href="index-17.html" title="Home Industrial">Home Industrial</a></li>
									<li><a class="dropdown-item" href="index-18.html" title="Home Business">Home Business</a></li>
									<li><a class="dropdown-item" href="index-19.html" title="Home Fitness">Home Fitness</a></li>
									<li><a class="dropdown-item" href="index-20.html" title="Home Architecture">Home Architecture</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<i class="ddl-switch fa fa-angle-down"></i>
								<c:url var="hotDeal" value="hotDealMenu.do"/>
								<a class="nav-link dropdown-toggle" title="Posts" href="${hotDeal }">핫딜</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="index-12.html" title="Home Food">Home Food</a></li>
									<li><a class="dropdown-item" href="index-13.html" title="Home Technology">Home Technology</a></li>
									<li><a class="dropdown-item" href="index-14.html" title="Home Beauty">Home Beauty</a></li>
									<li><a class="dropdown-item" href="index-15.html" title="Home Fashion">Home Fashion</a></li>
									<li><a class="dropdown-item" href="index-16.html" title="Home Travel">Home Travel</a></li>
									<li><a class="dropdown-item" href="index-17.html" title="Home Industrial">Home Industrial</a></li>
									<li><a class="dropdown-item" href="index-18.html" title="Home Business">Home Business</a></li>
									<li><a class="dropdown-item" href="index-19.html" title="Home Fitness">Home Fitness</a></li>
									<li><a class="dropdown-item" href="index-20.html" title="Home Architecture">Home Architecture</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<i class="ddl-switch fa fa-angle-down"></i>
								<a class="nav-link dropdown-toggle" title="Posts" href="#">나눔게시판</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="index-12.html" title="Home Food">Home Food</a></li>
									<li><a class="dropdown-item" href="index-13.html" title="Home Technology">Home Technology</a></li>
									<li><a class="dropdown-item" href="index-14.html" title="Home Beauty">Home Beauty</a></li>
									<li><a class="dropdown-item" href="index-15.html" title="Home Fashion">Home Fashion</a></li>
									<li><a class="dropdown-item" href="index-16.html" title="Home Travel">Home Travel</a></li>
									<li><a class="dropdown-item" href="index-17.html" title="Home Industrial">Home Industrial</a></li>
									<li><a class="dropdown-item" href="index-18.html" title="Home Business">Home Business</a></li>
									<li><a class="dropdown-item" href="index-19.html" title="Home Fitness">Home Fitness</a></li>
									<li><a class="dropdown-item" href="index-20.html" title="Home Architecture">Home Architecture</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<i class="ddl-switch fa fa-angle-down"></i>
								<a class="nav-link dropdown-toggle" title="Posts" href="#">고객센터</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="index-12.html" title="Home Food">Home Food</a></li>
									<li><a class="dropdown-item" href="index-13.html" title="Home Technology">Home Technology</a></li>
									<li><a class="dropdown-item" href="index-14.html" title="Home Beauty">Home Beauty</a></li>
									<li><a class="dropdown-item" href="index-15.html" title="Home Fashion">Home Fashion</a></li>
									<li><a class="dropdown-item" href="index-16.html" title="Home Travel">Home Travel</a></li>
									<li><a class="dropdown-item" href="index-17.html" title="Home Industrial">Home Industrial</a></li>
									<li><a class="dropdown-item" href="index-18.html" title="Home Business">Home Business</a></li>
									<li><a class="dropdown-item" href="index-19.html" title="Home Fitness">Home Fitness</a></li>
									<li><a class="dropdown-item" href="index-20.html" title="Home Architecture">Home Architecture</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<div id="loginpanel-1" class="desktop-hide">
						<div class="right toggle" id="toggle-1">
							<a id="slideit-1" class="slideit" href="#slidepanel"><i class="fo-icons fa fa-inbox"></i></a>
							<a id="closeit-1" class="closeit" href="#slidepanel"><i class="fo-icons fa fa-close"></i></a>
						</div>
					</div>
				</nav>
			</div><!-- Container /- -->
		</div><!-- Menu Block /- -->
		<!-- Search Box -->
		<div class="search-box collapse" id="search-box">
			<div class="container">
			<form>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search..." required>
					<span class="input-group-btn">
						<button class="btn btn-secondary" type="submit"><i class="pe-7s-search"></i></button>
					</span>
				</div>
			</form>
			</div>
		</div><!-- Search Box /- -->
	</header><!-- Header Section /- -->
	<!-- <div class="clearfix"></div> -->

	
	
	<!-- JQuery v1.12.4 -->
	<script src="resources/assets/js/jquery-1.12.4.min.js"></script>

	<!-- Library - Js -->
	<script src="resources/assets/js/popper.min.js"></script>
	<script src="resources/assets/js/lib.js"></script>
	
	<!-- REVOLUTION JS FILES -->
	<script type="text/javascript" src="resources/assets/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="resources/assets/revolution/js/jquery.themepunch.revolution.min.js"></script>

	<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->	
	<script type="text/javascript" src="resources/assets/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript" src="resources/assets/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
	<script type="text/javascript" src="resources/assets/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript" src="resources/assets/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="resources/assets/revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript" src="resources/assets/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript" src="resources/assets/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript" src="resources/assets/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="resources/assets/revolution/js/extensions/revolution.extension.video.min.js"></script>
	
	<!-- Library - Theme JS -->
	<script src="resources/assets/js/functions.js"></script>
</body>
</html>