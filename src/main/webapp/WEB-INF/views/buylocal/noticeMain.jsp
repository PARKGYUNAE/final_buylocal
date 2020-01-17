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
                                <table class="table table-style-2 wishlist-table text-center">
                                	<h3>공지사항</h3>
                                    
                                    <div style="float:right;">
                                        <select>
                                            <option value="0">최신순</option>
                                            <option value="1">조회수순</option>
                                         </select>
                                     </div>
                                    <br><br>
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th class="text-left">제목</th>
                                            <th>작성일</th>
                                            <th>&nbsp;</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="product-remove text-left">1</td>
                                            <td class="product-name text-left wide-column">
                                            	<c:url var="noticeD" value="noticeDetail.do"/>
                                                <h3>
                                                    <a href="${noticeD}">공지사항1</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
												20.01.03.
                                            </td>
                                            <td class="product-action-btn">
												첨부파일	
                                            </td>
                                        </tr>
                                       	<tr>
                                            <td class="product-remove text-left">2</td>
                                            <td class="product-name text-left wide-column">
                                                <h3>
                                                    <a href="#">공지사항2</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
												20.01.03.
                                            </td>
                                            <td class="product-action-btn">
												첨부파일	
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="product-remove text-left">3</td>
                                            <td class="product-name text-left wide-column">
                                                <h3>
                                                    <a href="#">공지사항3</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
												20.01.03.
                                            </td>
                                            <td class="product-action-btn">
												첨부파일	
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="product-remove text-left">4</td>
                                            <td class="product-name text-left wide-column">
                                                <h3>
                                                    <a href="#">공지사항4</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
												20.01.03.
                                            </td>
                                            <td class="product-action-btn">
												첨부파일	
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="product-remove text-left">5</td>
                                            <td class="product-name text-left wide-column">
                                                <h3>
                                                    <a href="#">공지사항5</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
												20.01.03.
                                            </td>
                                            <td class="product-action-btn">
												첨부파일	
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="product-remove text-left">6</td>
                                            <td class="product-name text-left wide-column">
                                                <h3>
                                                    <a href="#">공지사항1</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
												20.01.03.
                                            </td>
                                            <td class="product-action-btn">
												첨부파일	
                                            </td>
                                        </tr>
                                       	<tr>
                                            <td class="product-remove text-left">7</td>
                                            <td class="product-name text-left wide-column">
                                                <h3>
                                                    <a href="#">공지사항2</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
												20.01.03.
                                            </td>
                                            <td class="product-action-btn">
												첨부파일	
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="product-remove text-left">8</td>
                                            <td class="product-name text-left wide-column">
                                                <h3>
                                                    <a href="#">공지사항3</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
												20.01.03.
                                            </td>
                                            <td class="product-action-btn">
												첨부파일	
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="product-remove text-left">9</td>
                                            <td class="product-name text-left wide-column">
                                                <h3>
                                                    <a href="#">공지사항4</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
												20.01.03.
                                            </td>
                                            <td class="product-action-btn">
												첨부파일	
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="product-remove text-left">10</td>
                                            <td class="product-name text-left wide-column">
                                                <h3>
                                                    <a href="#">공지사항5</a>
                                                </h3>
                                            </td>
                                            <td class="product-stock">
												20.01.03.
                                            </td>
                                            <td class="product-action-btn">
												첨부파일	
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <br><br>
                            <!-- 페이지네이션 start -->
                            <nav class="pagination-wrap">
                                <ul class="pagination">
                                    <li><span class="page-number current">1</span></li>
                                    <li><a href="#" class="page-number">2</a></li>
                                    <li><span class="dot"></span></li>
                                    <li><span class="dot"></span></li>
                                    <li><span class="dot"></span></li>
                                    <li><a href="#" class="page-number">16</a></li>
                                </ul>
                            </nav>
                            <!-- 페이지네이션 end -->
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