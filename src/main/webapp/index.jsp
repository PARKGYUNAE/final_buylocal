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

	<title>바이로컬</title>

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
    
    <!-- JQuery v1.12.4 -->
	<script src="resources/assets/js/jquery-1.12.4.min.js"></script>
	
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
							<ul class="top-social">
								<li><a href="#" title="Facebook"><i class="ion-social-facebook-outline"></i></a></li>
								<li><a href="#" title="Twitter"><i class="ion-social-twitter-outline"></i></a></li>
								<li><a href="#" title="Instagram"><i class="ion-social-instagram-outline"></i></a></li>
							</ul>
						</div>
						<div class="col-lg-4 logo-block">
							<img src="resources/assets/images/mainlogo.jpeg"/>
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
					<div class="collapse navbar-collapse" id="navbar1">
						<ul class="navbar-nav">							
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
		<script>
			$(function(){
				$("#all").hover(function(){
					console.log($("#asdf").attr('hover'));
					console.log($("#all").prop('hover'));
				});
			});
		</script>
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
	<div class="clearfix"></div>

	<div class="main-container">
	
		<main class="site-main">
			
			<!-- Slider Section -->
			<div class="container-fluid no-left-padding no-right-padding slider-section">
				<div id="mm-slider-1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="mm-slider-1" data-source="gallery">
					<!-- START REVOLUTION SLIDER 5.4.1 fullwidth mode -->
					<div id="mm-slider-1" class="rev_slider fullwidthabanner" data-version="5.4.1">
						<ul>	
							<!-- SLIDE  -->
							<li data-index="rs-26" data-transition="random-static,random-premium,random,boxslide,slotslide-horizontal,slotslide-vertical,boxfade,slotfade-horizontal,slotfade-vertical" data-slotamount="default,default,default,default,default,default,default,default,default,default" data-hideafterloop="0" data-hideslideonmobile="off"  data-randomtransition="on" data-easein="default,default,default,default,default,default,default,default,default,default" data-easeout="default,default,default,default,default,default,default,default,default,default" data-masterspeed="default,default,default,default,default,default,default,default,default,default"  data-rotate="0,0,0,0,0,0,0,0,0,0"  data-saveperformance="off"  class="slide-overlay" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
								<!-- MAIN IMAGE -->
								<img src="http://placehold.it/1920x600"  alt="" title="slide-1"  width="1920" height="600" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
								<!-- LAYERS -->

								<!-- LAYER NR. 1 -->
								<a class="slidecnt1 tp-caption tp-layer-selectable tp-resizeme category-link" href="#" target="_self" rel="nofollow"			 id="slide-26-layer-1" 
									data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									data-y="['middle','middle','middle','middle']" data-voffset="['-56','-70','-70','-57']" 
									data-fontsize="['14','14','18','18']"
									data-height="none"
									data-whitespace="nowrap"					 
									data-type="text" 
									data-actions=''
									data-responsive_offset="on"
									data-frames='[{"delay":0,"speed":1000,"frame":"0","from":"z:0;rX:0deg;rY:0;rZ:0;sX:2;sY:2;skX:0;skY:0;opacity:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(255,255,255);br:0px 0px 0px 0px;"}]'
									data-textAlign="['inherit','inherit','inherit','inherit']"
									data-paddingtop="[0,0,0,0]"
									data-paddingright="[0,0,0,0]"
									data-paddingbottom="[0,0,0,0]"
									data-paddingleft="[0,0,0,0]">TRAVEL </a>

								<!-- LAYER NR. 2 -->
								<a class="slidecnt2 tp-caption tp-layer-selectable tp-resizeme post-title" href="#" target="_self" rel="nofollow" id="slide-26-layer-2" 
									data-x="['center','center','center','center']" data-hoffset="['0','-1','-1','-1']" 
									data-y="['middle','middle','middle','middle']" data-voffset="['6','-5','-5','-5']" 
									data-fontsize="['40','30','30','23']"
									data-lineheight="['40','40','40','30']"
									data-width="['601','601','601','435']"
									data-height="['81','81','81','none']"
									data-whitespace="normal"
						 			data-type="text" 
									data-actions=''
									data-responsive_offset="on" 
									data-frames='[{"delay":0,"speed":1500,"frame":"0","from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
									data-textAlign="['center','center','center','center']"
									data-paddingtop="[0,0,0,0]"
									data-paddingright="[0,0,0,0]"
									data-paddingbottom="[0,0,0,0]"
									data-paddingleft="[0,0,0,0]">Best Surfing Spots for Beginners	and Advanced </a>

								<!-- LAYER NR. 3 -->
								<a class="slidecnt3 tp-caption rev-btn tp-layer-selectable" href="#" target="_self" rel="nofollow" id="slide-26-layer-3" 
									data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									data-y="['middle','middle','middle','middle']" data-voffset="['80','73','73','59']" 
									data-width="none"
									data-height="none"
									data-whitespace="nowrap"						 
									data-type="button" 
									data-actions=''
									data-responsive_offset="on" 
									data-responsive="off"
									data-frames='[{"delay":0,"speed":1000,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power2.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(21,21,21);bg:rgba(255,255,255,1);"}]'
									data-textAlign="['inherit','inherit','inherit','inherit']"
									data-paddingtop="[2,2,2,2]"
									data-paddingright="[20,20,20,20]"
									data-paddingbottom="[0,0,0,0]"
									data-paddingleft="[20,20,20,20]">READ MORE </a>
							</li>
							<!-- SLIDE  -->
							<li data-index="rs-28" data-transition="random-static,random-premium,random,boxslide,slotslide-horizontal,slotslide-vertical,boxfade,slotfade-horizontal,slotfade-vertical" data-slotamount="default,default,default,default,default,default,default,default,default,default" data-hideafterloop="0" data-hideslideonmobile="off"  data-randomtransition="on" data-easein="default,default,default,default,default,default,default,default,default,default" data-easeout="default,default,default,default,default,default,default,default,default,default" data-masterspeed="default,default,default,default,default,default,default,default,default,default"  data-rotate="0,0,0,0,0,0,0,0,0,0"  data-saveperformance="off"  class="slide-overlay" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
								<!-- MAIN IMAGE -->
								<img src="http://placehold.it/1920x600"  alt="" title="slide-1"  width="1920" height="600" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
								<!-- LAYERS -->

								<!-- LAYER NR. 4 -->
								<a class="slidecnt1 tp-caption tp-layer-selectable tp-resizeme category-link" href="#" target="_self" rel="nofollow" id="slide-28-layer-1" 
									data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									data-y="['middle','middle','middle','middle']" data-voffset="['-56','-70','-70','-57']" 
									data-fontsize="['14','14','18','18']"
									data-height="none"
									data-whitespace="nowrap"						 
									data-type="text" 
									data-actions=''
									data-responsive_offset="on" 
									data-frames='[{"delay":0,"speed":1000,"frame":"0","from":"z:0;rX:0deg;rY:0;rZ:0;sX:2;sY:2;skX:0;skY:0;opacity:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(255,255,255);br:0px 0px 0px 0px;"}]'
									data-textAlign="['inherit','inherit','inherit','inherit']"
									data-paddingtop="[0,0,0,0]"
									data-paddingright="[0,0,0,0]"
									data-paddingbottom="[0,0,0,0]"
									data-paddingleft="[0,0,0,0]">TRAVEL </a>

								<!-- LAYER NR. 5 -->
								<a class="slidecnt2 tp-caption tp-layer-selectable tp-resizeme post-title" href="#" target="_self" rel="nofollow" id="slide-28-layer-2" 
									data-x="['center','center','center','center']" data-hoffset="['0','-1','-1','-1']" 
									data-y="['middle','middle','middle','middle']" data-voffset="['6','-5','-5','-5']" 
									data-fontsize="['40','30','30','23']"
									data-lineheight="['40','40','40','30']"
									data-width="['601','601','601','435']"
									data-height="['81','81','81','none']"
									data-whitespace="normal"						 
									data-type="text" 
									data-actions=''
									data-responsive_offset="on" 
									data-frames='[{"delay":0,"speed":1500,"frame":"0","from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
									data-textAlign="['center','center','center','center']"
									data-paddingtop="[0,0,0,0]"
									data-paddingright="[0,0,0,0]"
									data-paddingbottom="[0,0,0,0]"
									data-paddingleft="[0,0,0,0]">Best Surfing Spots for Beginners	
									and Advanced</a>

								<!-- LAYER NR. 6 -->
								<a class="slidecnt3 tp-caption rev-btn tp-layer-selectable" href="#" target="_self" rel="nofollow" id="slide-28-layer-3" 
									data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									data-y="['middle','middle','middle','middle']" data-voffset="['80','73','73','59']" 
									data-width="none"
									data-height="none"
									data-whitespace="nowrap"						 
									data-type="button" 
									data-actions=''
									data-responsive_offset="on" 
									data-responsive="off"
									data-frames='[{"delay":0,"speed":1000,"frame":"0","from":"y:50px;opacity:0;","to":"o:1;","ease":"Power2.easeOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(21,21,21);bg:rgba(255,255,255,1);"}]'
									data-textAlign="['inherit','inherit','inherit','inherit']"
									data-paddingtop="[2,2,2,2]"
									data-paddingright="[20,20,20,20]"
									data-paddingbottom="[0,0,0,0]"
									data-paddingleft="[20,20,20,20]">READ MORE </a>
							</li>
						</ul>
						<div class="tp-bannertimer tp-bottom"></div>
					</div>
				</div><!-- END REVOLUTION SLIDER -->
			</div><!-- Slider Section /- -->
			
			<!-- Page Content -->
			<div class="container-fluid no-left-padding no-right-padding page-content">
				<!-- Container -->
				<div class="container">
					<div class="row">
						<div class="content-area col-sm-12">
							<!-- Row -->
							<div class="row blog-masonry-list">
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 blog-masonry-box">
									<div class="type-post">
										<div class="entry-cover">
											<div class="post-meta">
												<span class="byline">by <a href="#" title="Indesign">inDesign</a></span>
												<span class="post-date"><a href="#">MARCH 17, 2017</a></span>
											</div>
											<a href="#"><img src="http://placehold.it/370x247" alt="Post" /></a>
										</div>
										<div class="entry-content">
											<div class="entry-header">	
												<span class="post-category"><a href="#" title="NATURE">NATURE</a></span>
												<h3 class="entry-title"><a href="#" title="Cliff Sunset Sea View">Cliff Sunset Sea View</a></h3>
											</div>
											<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings...</p>
											<a href="#" title="Read More">Read More</a>
										</div>
									</div>
								</div>
							</div><!-- Row /- -->
							<h3>나눔 게시판</h3><h3>공지사항이였나...</h3>
							<div class="col-6" style="border:1px solid red; float:left" >
								나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판
								나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판
								나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판
								나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판나눔 게시판
							</div>
							
							<div class="col-6" style="border:1px solid red; float:left" >
								여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?
								여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?
								여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?
								여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?여기는뭐죠?
							</div>
							<br>
							<!-- Pagination -->
							<nav class="navigation pagination">
								<h2 class="screen-reader-text">Posts navigation</h2>
								<div class="nav-links">
									<a class="prev page-numbers" href="#">Previous</a>
									<span class="page-numbers current">
										<span class="meta-nav screen-reader-text">Page </span>1
									</span>
									<a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>2</a>
									<a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>3</a>
									<a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>...</a>
									<a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>6</a>
									<a class="next page-numbers" href="#">Next</a>
								</div>
							</nav><!-- Pagination /- -->
						</div>
					</div>
				</div><!-- Container /- -->
			</div><!-- Page Content /- -->
			
		</main>
		
	</div>
	
	<!-- Footer Main -->
	<footer class="container-fluid no-left-padding no-right-padding footer-main">
		<!-- Instagram -->
		<div class="container-fluid no-left-padding no-right-padding instagram-block">
			<ul class="instagram-carousel">
				<li><a href="#"><img src="http://placehold.it/319x319/aaa" alt="Instagram" /></a></li>
				<li><a href="#"><img src="http://placehold.it/319x319" alt="Instagram" /></a></li>
				<li><a href="#"><img src="http://placehold.it/319x319/aaa" alt="Instagram" /></a></li>
				<li><a href="#"><img src="http://placehold.it/319x319" alt="Instagram" /></a></li>
				<li><a href="#"><img src="http://placehold.it/319x319/aaa" alt="Instagram" /></a></li>
				<li><a href="#"><img src="http://placehold.it/319x319" alt="Instagram" /></a></li>
			</ul>
		</div><!-- Instagram /- -->
		<!-- Container -->
		<div class="container">
			<ul class="ftr-social">
				<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i>Facebook</a></li>
				<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i>twitter</a></li>
				<li><a href="#" title="Instagram"><i class="fa fa-instagram"></i>Instagram</a></li>
				<li><a href="#" title="Google Plus"><i class="fa fa-google-plus"></i>Google plus</a></li>
				<li><a href="#" title="Pinterest"><i class="fa fa-pinterest-p"></i>pinterest</a></li>
				<li><a href="#" title="Youtube"><i class="fa fa-youtube"></i>youtube</a></li>
			</ul>
			<div class="copyright">
				<p>Copyright @ 2017 MINIMAG</p>
			</div>
		</div><!-- Container /- -->
	</footer><!-- Footer Main /- -->
	
	

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