<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 페이지</title>
<link rel="shortcut icon" href="resources/assets/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="resources/assets/img/icon.png">
</head>
<body>
	<c:import url="../common/menubar.jsp" />
		
	  <div class="wrapper">
                 
        <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-image ptb--80" data-bg-image="resources/assets/img/bg/1920X200.png">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                       <h1 class="page-title">신청하기</h1>
						<ul class="breadcrumb">
							<li><a href="<%=request.getContextPath() %>">Home</a></li>
							<li class="current"><span>신청하기</span></li>
							<li class="current"><span>상품 등록하기</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <main class="main-content-wrapper">
            <div class="inner-page-content pt--75 pt-md--55">
                <!-- Contact Area Start -->
                <section class="contact-area mb--75 mb-md--55">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-5 mb-sm--30">
                                <div class="heading mb--32">
                                    <h2>* 유의사항</h2>
                                    <hr class="delimeter">
                                </div>
                                <div class="contact-info mb--20">
                                    <p><i class="fa fa-map-marker"></i>- 썸네일 사진 권장 크기 : 700 * 778</p>
                                    <p><i class="fa fa-phone"></i>- 상품정보(이미지) 권장 크기 : </p>
                                    <p><i class="fa fa-fax"></i>- 땡처리게시판은 당일 판매 제품만 등록 가능합니다.  </p>
                                    <p><i class="fa fa-fax"></i>- 최소 판매 가격은 5000원 입니다. </p>
                                    <p><i class="fa fa-clock-o"></i>- 자세한 설명은 FAQ를 참고하세요.</p>
                                </div>
                            </div>
                            <div class="col-md-7 offset-lg-1">
                                <div class="heading mb--40">
                                    <h2>상품 등록하기 </h2>
                                    <hr class="delimeter">
                                    <p><i class="fa fa-map-marker"></i>상품 등록 전, 유의사항을 먼저 확인하세요.</p>
                                </div>
                                <form action="insertProduct.do" method="post" enctype="multipart/form-data">
 									
 									<!-- cNo, lCode 보내기 -->
                                   <c:set var="cAddress" value="${ loginUser.cAddress}"/>
                                   <input type="hidden" id="cNo" name="cNo" value="${loginUser.cNo}"/> 
                                   <input type="hidden" id="cAddress" value="${cAddress}"/>
                                   <input type="hidden" id="lCode" name="lCode"/>
                                   
                                   <script>
                                   	
                                   </script>

                                    <input type="text" name="pTitle" id="pTitle" class="form__input mb--30" placeholder="글 제목*" required>
                                    <div id="pOriginalThumbArea">썸네일(판매상품 사진)을 선택하세요 : &nbsp;&nbsp;
									<label for="pOriginalThumb"></label><input type="file" id="pOriginalThumb" name="pOriginalThumb" >								
                                    </div><br>
                                    <input type="text" name="pName" id="pName" class="form__input mb--30" placeholder="상품 이름*" required>
									<div id="pBoardArea">게시 할 게시판 위치를 정해주세요 : &nbsp;&nbsp;
									<label><input type="radio" id="pBoard_type1" name="pBoard" value="ttang">땡처리게시판</label> 
									&nbsp;&nbsp;
									<label><input type="radio" id="pBoard_type2" name="pBoard" value="hotDeal" checked>핫딜게시판</label>
									</div><br>
									<!-- 선택한 게시판 위치에 따라 제공되는 카테고리 선택지 다르게 -->
									<div id="cgName">카테고리를 선택하세요 : &nbsp;&nbsp;
									<select id="cgName1" name="cgCode">
										<option value="T1">한식</option>
										<option value="T2">중식</option>
										<option value="T3">일식</option>
										<option value="T4">양식</optiosn>
										<option value="T5">커피/제과</option>
										<option value="T6">기타</option>
									</select>
									<select id="cgName2" name="cgCode">
										<option value="C1">디지털/가전</option>
										<option value="C2">의류/패션잡화</option>
										<option value="C3">뷰티/미용</option>
										<option value="C4">스포츠/레저</option>
										<option value="C5">도서/티켓/음반</option>
										<option value="C6">가구/인테리어</option>
										<option value="C7">신선/가공식품</option>
										<option value="C8">게임/취미</option>
										<option value="C9">반려동물용품</option>
										<option value="C10">기타</option>
									</select>
									</div><br>
								 	<div id="pStartDateArea"> 판매 시작일 : &nbsp;&nbsp;
									<input type="date" name="pStartDate" id="pStartDate" min="&{currentDate};%">
									</div><br>
									<div id="pEndDateArea"> 판매 종료일 : &nbsp;&nbsp;
									<input type="date" name="pEndDate" id="pEndDate" min="&{currentDate};%">
									<br>* 판매 종료일은 핫딜 게시판의 경우만 선택 가능합니다.
									</div>
									<br>
								 	<input type="number" name="pOriginalPrice" id="pOriginalPrice" min="5000" class="form__input mb--30" placeholder="할인 전 가격(원)*" required>
								  	<input type="number" name="pFinalPrice" id="pFinalPrice" min="5000" class="form__input mb--30" placeholder="최종 판매 가격(원)*" required>
								  	<input type="number" name="pAmount" id="pAmount" min="1" step="1" class="form__input mb--30" placeholder="판매 수량(개)*" required>
								  	<textarea class="form__input form__input--textarea mb--30" id="pInfoText" name="pInfoText" placeholder="상품정보(텍스트)*" required></textarea>
                                    <div id="pInfoImgaeArea">상품정보(이미지)을 선택하세요 : &nbsp;&nbsp;
									<label for="pOriginalInfoImage"></label><input type="file" id="pOriginalInfoImage" name="pOriginalInfoImage" >								
                                    </div>
                                    
                                    <br><hr><br>
                                    <h5>추가정보 입력란</h5>
                                    <input type="text" name="pVolume" id="pVolume" class="form__input mb--30" placeholder="용량/크기(kg)">
                                    <input type="date" name="pProductDate" id="pProductDate" class="form__input mb--30" placeholder="제조연월">
                                    <input type="text" name="pOrigin" id="pOrigin" class="form__input mb--30" placeholder="원산지">
                                    <input type="text" name="pTreatment" id="pTreatment" class="form__input mb--30" placeholder="취급방법">
                                    
                                    <br><br>
                                    <input type="submit" class="btn btn-shape-round form__submit">
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Contact Area End -->
            </div>
        </main>
        <!-- Main Content Wrapper End -->
	</div>

	<script type="text/javascript">
	
	// cNo 보내기  & cAddress를 lCode로 바꿔 보내기
	$(function(){

		var cNo = $("#cNo").val();
		console.log('cNo=' + cNo);
		
		var cAddress = $('#cAddress').val(); 
		var lCode = $('#lCode').val();
		console.log('cAddress=' + cAddress);
		
		// 주소값이 '서울특별시'에  한정되었을 것으로 가정
		if(cAddress.indexOf('종로구')){
			lCode = 'L1';
		} else if (cAddress.indexOf('중구')) {
			lCode = 'L2';
		} else if (cAddress.indexOf('용산구')) {
			lCode = 'L3';
		} else if (cAddress.indexOf('성동구')) {
			lCode = 'L4';
		} else if (cAddress.indexOf('광진구')) {
			lCode = 'L5';
		} else if (cAddress.indexOf('동대문구')) {
			lCode = 'L6';
		} else if (cAddress.indexOf('중랑구')) {
			lCode = 'L7';
		} else if (cAddress.indexOf('성북구')) {
			lCode = 'L8';
		} else if (cAddress.indexOf('강북구')) {
			lCode = 'L9';
		} else if (cAddress.indexOf('노봉구')) {
			lCode = 'L10';
		} else if (cAddress.indexOf('노원구')) {
			lCode = 'L11';
		} else if (cAddress.indexOf('은평구')) {
			lCode = 'L12';
		} else if (cAddress.indexOf('서대문구')) {
			lCode = 'L13';
		} else if (cAddress.indexOf('마포구')) {
			lCode = 'L14';
		} else if (cAddress.indexOf('양천구')) {
			lCode = 'L15';
		} else if (cAddress.indexOf('강서구')) {
			lCode = 'L16';
		} else if (cAddress.indexOf('구로구')) {
			lCode = 'L17';
		} else if (cAddress.indexOf('금천구')) {
			lCode = 'L18';
		} else if (cAddress.indexOf('영등포구')) {
			lCode = 'L19';
		} else if (cAddress.indexOf('동작구')) {
			lCode = 'L20';
		} else if (cAddress.indexOf('관악구')) {
			lCode = 'L21';
		} else if (cAddress.indexOf('서초구')) {
			lCode = 'L22';
		} else if (cAddress.indexOf('강남구')) {
			lCode = 'L23';
		} else if (cAddress.indexOf('송파구')) {
			lCode = 'L24';
		} else {
			lCode = 'L25';
		} 
		
		console.log("lCode=" + lCode);
		
	});	
	
		$(function(){
			
			// 오늘 날짜
			var d = new Date();
			var currentDate = d.getFullYear() + "-" + (d.getMonth() + 1) + "-" + d.getDate();
			console.log("오늘 날짜 : " + currentDate);
			
			// 게시판 선택에 따라 카테고리, 판매종료일 변화(땡처리 선택시, 숨김)
			$("#cgName1").hide();
			
			$(document).on('click', '#pBoard_type1', function(){
					$("#cgName1").show();
					$('#cgName2').hide(); 
					$('#pEndDateArea').hide(); 
			});
			
			$(document).on('click', '#pBoard_type2', function(){
					$("#cgName1").hide();
					$('#cgName2').show();
					$('#pEndDateArea').show();
			});
			
			
			// 땡처리 선택 시, 판매종료일은 판매시작일과 동일하게 설정
			$("#pStartDate").change(function(){
				var pStartDate = $("#pStartDate").val();
				var pEndDate = $('#pEndDate').val();
				$('#pEndDate').attr('value', pStartDate);
				console.log("판매종료일 : " + pEndDate);
			});
		});
		
				
	</script>
	
	<c:import url="../common/footer.jsp"/>



	<!-- Global Overlay Start -->
	<div class="global-overlay"></div>
	<!-- Global Overlay End -->

	<!-- Global Overlay Start -->
	<a class="scroll-to-top" href=""><i class="la la-angle-double-up"></i></a>
	<!-- Global Overlay End -->
	<!-- Main Wrapper End -->
	
	
</body>
</html>