<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
 
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>공지사항</title>
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
</head>

<body>
	<c:import url="../common/menubar.jsp"/>	
	
    

    <!-- Main Wrapper Start -->
    <div class="wrapper">
   
        <!-- Breadcrumb area Start -->
        <section  class="page-title-area bg-image ptb--80" data-bg-image="assets/img/bg/page_title_bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">공지사항</h1>
                        <ul class="breadcrumb">
                            <li><a href="<%=request.getContextPath() %>">Home</a></li>
                            <li class="current"><span>Buylocal</span></li>
                            <li class="current"><span>공지사항</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner ptb--80 ptb-md--60">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="table-content table-responsive">
                                

								<br>
								
                                <h3>공지사항1</h3>
                                <hr>
                                <p>20.01.03. / 조회수 : 10</p>
                                
                                <br><br>
                                
                                <p>
                                	공지사항 내용입니당.
                                	<br><br>
                                	1. 공지사항 내용
                                	- 공지사항 세부내용
									<br><br>
                                	2. 공지사항 내용
                                	- 공지사항 세부내용
									<br><br>
                                	3. 공지사항 내용 
                                  	- 공지사항 세부내용
  									<br><br>
  									
  									감사합니다.<br><br>                              
                                </p>
                                
                                <hr>
                                
                                <table>
                                <tr>
                                	<th>이전글</th>
                                	<td><a href="#">없음</a></td>
                                </tr>	
                                
                                <tr>
                                	<th>다음글</th>
                                	<td><a href="#">공지사항2</a></td>
                                </tr>
                                </table>
                                
                                <br>
                                
                                <div id="buttonArea" style="float:right;">	
	                                <button> 목록으로 </button>
	                                <button> 글 삭제 </button>
	                                <button> 글 수정 </button>
                                </div>
                                
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->

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