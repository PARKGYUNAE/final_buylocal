<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h5>a{
		cursor:pointer;
		float:left;
	}
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>
	<br>
	
	<div class="main-container">
		
		<main class="site-main">	
		
			<!-- Page Content -->
			<div class="container-fluid no-left-padding no-right-padding page-content">
				<!-- container -->	
					<div class="container">
					<!-- Row -->
					<div class="row">
					<!-- Widget Area -->
						<div class="col-xs-6 col-sm-3 widget-area" >
							
							<!-- Widget : Categories -->
							<aside class="widget widget_categories text-center" >
								<h3 class="widget-title"><a href="${ myProfile }">MY PROFILE</a></h3>
								<ul>
									<li><a href="${ myInfo }" title="Info">정보수정</a></li>
									<li><a href="${ myCart }" title="Cart">장바구니</a></li>
									<li><a href="${ myOrderList }" title="Order">구매내역</a></li>
									<li><a href="${ myFavorite }" title="Favorite">찜</a></li>
								</ul>
							</aside><!-- Widget : Categories /- -->
							<!-- Widget : Tags /- -->
						</div><!-- Widget Area /- -->
						
						<!-- Page Content -->
					
						<!-- Content Area -->
						<!-- Content Area /- -->
						<!-- Widget Area -->
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>