<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#insertTable{
		margin-left: 10%;
		width: 80%;
	}
	#insertTable td{
		padding-left: 10%;
	}
	#insertTable input{
		width: 100%;
	}
	#insertTable tr{
		height:100px;
		border-bottom: 1px solid black;
	}
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp" />
	<br>
	<div class="main-container">
		<main class="site-main">	
			<div class="container-fluid no-left-padding no-right-padding page-content">
				<div class="container">
					<h1>주문하기</h1>
					<br><br><br>
					<form>
						<table id="insertTable">
							<tr>
								<th>상품명</th>
								<td><input type="text" placeholder="내용을 입력해주세요."/></td>
							</tr>
							<tr>
								<th>문의 내용</th>
								<td><textarea rows="10" cols="100"></textarea></td>
							</tr>
							</tr>
							<tr>
								<th></th>
								<td><a href="#"><img src="http://placehold.it/120x120" alt="Post"/></a>
									<input type="file" style="">
								</td>
							</tr>
							<tr>
								<th></th>	
								<td><button type="submit" style="width:30%; margin-left:20%;">등록하기</button><button style="width:30%; margin-left:10%">취소하기</button></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</main>
	</div>
</body>
</html>