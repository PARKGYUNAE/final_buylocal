<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../common/menubar.jsp" />
	<br>
	<!-- Page Content -->
			<div class="container-fluid no-left-padding no-right-padding page-content">
				<!-- Container -->
				<div class="container">
					<div class="row">
						<h3>핫딜</h3>&nbsp;&nbsp;&nbsp;&nbsp;
						<h6>검색 위치 : </h6>
					</div>
					<br>
					<h6>현재 888개의 상품이 있습니다.</h6>
					<br><br>
					<div class="row">
						<div class="content-area col-sm-12">
								<!-- Row -->
								<div class="row blog-masonry-list">
									
										<table border="1">
											<tr>	
												<th>식사류 ></th>
											</tr>
											<tr>
												<th>제과류 ></th>
											</tr>
											<tr>
												<th>비식품류 ></th>
											</tr>
										</table>
										<hr>
										<a>한식</a><a>중식</a><a>양식</a><a>일식</a><a>기타</a>
										<hr>
								</div>
							</div>
					</div>
				</div>
			</div>


</body>
</html>