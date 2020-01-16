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
        <section class="page-title-area bg-image ptb--80" data-bg-image="resources/assets/img/bg/page_title_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                       <h1 class="page-title">신청하기</h1>
						<ul class="breadcrumb">
							<li><a href="index.html">Home</a></li>
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
								    <p><i class="fa fa-map-marker"></i>상품 등록 전, 유의사항을 먼저 읽어주세요.</p>
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
                                </div>
                                <form action="insertProduct.do" method="post" enctype="multipart/form-data">
                                    <input type="text" name="con_title" id="con_title" class="form__input mb--30" placeholder="글 제목(판매상품 이름)*">
                                    <p>썸네일(판매상품 사진)을 선택하세요 : &nbsp;&nbsp;
									<label for="con_file"></label><input type="file" id="con_file">								
                                    </p>
									<p>게시 할 게시판 위치를 정해주세요 : &nbsp;&nbsp;
									<input type="radio" name="con_type" id="con_type1" ><label for="con_type1">땡처리게시판</label> 
									&nbsp;&nbsp;
									<input type="radio" name="con_type" id="con_type2"><label for="con_type2">핫딜게시판</label>
									</p>
									<!-- 선택한 게시판 위치에 따라 제공되는 카테고리 선택지 다르게 -->
									<p>카테고리를 선택하세요 : &nbsp;&nbsp;
									<select>
										<option>땡처리</option>
										<option>한식</option>
										<option>중식</option>
										<option>일식</option>
										<option>양식</option>
										<option>커피/제과</option>
										<option>기타</option>
									</select>
									<select>
										<option>핫딜</option>
										<option>디지털/가전</option>
										<option>의류/패션잡화</option>
										<option>뷰티/미용</option>
										<option>스포츠/레저</option>
										<option>도서/티켓/음반</option>
										<option>가구/인테리어</option>
										<option>신선/가공식품</option>
										<option>게임/취미</option>
										<option>반려동물용품</option>
										<option>기타</option>
									</select>
									</p>
								 	<p> 판매 시작일 : &nbsp;&nbsp;
									<input type="date" name="pStartDate" id="pStartDate">
									</p>
									<p> 판매 종료일 : &nbsp;&nbsp;
									<input type="date" name="pEndDate" id="pEndDate">
									* 판매 종료일은 핫딜 게시판의 경우만 선택 가능합니다.(수정 예정 : 핫딜 선택시에만 보이게)
									</p>
								 	<input type="number" name="pOriginalPrice" id="con_originalPrice" min="5000" class="form__input mb--30" placeholder="할인 전 가격(원)*">
								  	<input type="number" name="pFinalPrice" id="con_finalPrice" min="5000" class="form__input mb--30" placeholder="최종 판매 가격(원)*">
								  	<input type="text" name="pAmount" id="con_finalPrice" class="form__input mb--30" placeholder="판매 수량(개)*">
								  	<textarea class="form__input form__input--textarea mb--30" placeholder="상품정보(텍스트)*" id="con_message" name="con_message"></textarea>
                                    <p>상품정보(이미지)을 선택하세요 : &nbsp;&nbsp;
									<label for="con_file"></label><input type="file" id="con_file">								
                                    </p>
                                    <button type="submit" class="btn btn-shape-round form__submit">제출하기</button>
                                  
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

	<script>
		function LoadImg(value, num){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				
				reader.onload = function(e){
					
					switch(num){
					case 1 : 
						$("#titleImg").attr("src", e.target.result);
						break;
					}
					
				}
				reader.readAsDataURL(value.files[0]);
			}
		}
	
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