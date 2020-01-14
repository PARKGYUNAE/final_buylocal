<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<c:import url="common.jsp"/>
</head>

<body id="page-top">

  <div id="wrapper">

   <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="main.jsp" id="personDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>회원관리</span>
        </a>
         <div class="dropdown-menu" aria-labelledby="personDropdown">
          <h6 class="dropdown-header">Login Screens:</h6>
          <c:url var="normalUser" value="normalUser.do"/>
          <c:url var="businessUser" value="businessUser.do"/>
          <a class="dropdown-item" href="${ normalUser }">일반 회원</a>
          <a class="dropdown-item" href="${ businessUser }">사업자 회원</a>
          </div>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>게시글관리</span>
        </a>
        
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <h6 class="dropdown-header">Login Screens:</h6>
          <!-- 말이 게시글이지 핫딜, 팝니다삽니다 다 불러옵니다! -->
          <c:url var="content" value="content.do"/>
          <c:url var="qna" value="qna.do"/>
          <c:url var="report" value="report.do"/>
          <a class="dropdown-item" href="${ content }">게시글 관리</a>
           <a class="dropdown-item" href="${ qna }">Q&A</a>
          <a class="dropdown-item" href="${ report }">신고 리스트</a>
          <div class="dropdown-divider"></div>
        </div>
      </li>
      <li class="nav-item">
      		<c:url var="advertise" value="advertise.do"/>
        <a class="nav-link" href="${ advertise }">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>지역광고</span></a>
      </li>
      <li class="nav-item">
      		<c:url var="adminChart" value="adminChart.do"/>
        <a class="nav-link" href="${adminChart}">
          <i class="fas fa-fw fa-table"></i>
          <span>통계</span></a>
      </li>
    </ul>

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">게시글 모아보기</li>
        </ol>

        <!-- DataTables Example -->
        <div class="row">
         <div class="col-lg-6">
        <div class="card mb-5">
          <div class="card-header">
            <i class="fas fa-table"></i>
          		  핫딜 상세보기 <a href="">상세보기</a></div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" class="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>제목</th>
                    <th>상품명</th>
                    <th>작성자</th>
                    <th>작성일</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                   <th>제목</th>
                    <th>상품명</th>
                    <th>작성자</th>
                    <th>작성일</th>
                  </tr>
                </tfoot>
                <tbody>
                <c:forEach var="hot" items="${ list1 }">
                <c:url var="hotdealDetail" value="hotDealDetail.do">
                <c:param name="pNo" value="${hot.pNo}"/>
                </c:url>
               
                <tr style="cursor:pointer" id="trtrtr" onclick="window.open('${hotdealDetail}', 'regist', 'width=1000,height=600, left=400 top=100')">
                		<td>${hot.pTitle}</td>
                		<td>
                			${hot.pName}
                		</td>
                		<td>${hot.cName}</td>
                		<td>${hot.pDate}</td>  
                	</tr>
                	
                </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>
        </div>
        <script>
        	
        </script>
     
       <div class="col-lg-6">
        <div class="card mb-5">
          <div class="card-header">
            <i class="fas fa-table"></i>
          		  땡처리 상세보기 <a href="">상세보기</a></div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable1" class="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>제목</th>
                    <th>상품명</th>
                    <th>작성자</th>
                    <th>작성일</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>제목</th>
                    <th>상품명</th>
                    <th>작성자</th>
                    <th>작성일</th>
                  </tr>
                </tfoot>
                <tbody>
                 <c:forEach var="ttang" items="${ list2 }">
                	<tr>
                		<td>${ttang.pTitle}</td>
                		<td>
                			${ttang.pName}
                		</td>
                		<td>${ttang.cName}</td>
                		<td>${ttang.pDate}</td>  
                	</tr>
                	
                </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>
        </div>
      
      </div>
      
        <div class="row">
         <div class="col-lg-12">
        <div class="card mb-5">
          <div class="card-header">
            <i class="fas fa-table"></i>
          		  나눔게시판 상세보기 <a href="">상세보기</a></div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable3" class="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>카테고리</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>카테고리</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                  </tr>
                </tfoot>
                <tbody>
                  <tr>
                    <td>Tiger Nixon</td>
                    <td>System Architect</td>
                    <td>Edinburgh</td>
                    <td>61</td>
                  </tr>
                  <tr>
                    <td>Garrett Winters</td>
                    <td>Accountant</td>
                    <td>Tokyo</td>
                    <td>63</td>
                  </tr>
                  <tr>
                    <td>Ashton Cox</td>
                    <td>Junior Technical Author</td>
                    <td>San Francisco</td>
                    <td>66</td>
                  </tr>
                  <tr>
                    <td>Cedric Kelly</td>
                    <td>Senior Javascript Developer</td>
                    <td>Edinburgh</td>
                    <td>22</td>
                  </tr>
                  <tr>
                    <td>Airi Satou</td>
                    <td>Accountant</td>
                    <td>Tokyo</td>
                    <td>33</td>
                  </tr>
                  <tr>
                    <td>Brielle Williamson</td>
                    <td>Integration Specialist</td>
                    <td>New York</td>
                    <td>61</td>
                  </tr>
                  <tr>
                    <td>Herrod Chandler</td>
                    <td>Sales Assistant</td>
                    <td>San Francisco</td>
                    <td>59</td>
                  </tr>
                  <tr>
                    <td>Rhona Davidson</td>
                    <td>Integration Specialist</td>
                    <td>Tokyo</td>
                    <td>55</td>
                  </tr>
                  <tr>
                    <td>Colleen Hurst</td>
                    <td>Javascript Developer</td>
                    <td>San Francisco</td>
                    <td>39</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>
        </div>

      
      </div>
      
      
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © Your Website 2019</span>
          </div>
        </div>
      </footer>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" 
="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="resources/admin/vendor/jquery/jquery.min.js"></script>
  <script src="resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="resources/admin/vendor/datatables/jquery.dataTables.js"></script>
  <script src="resources/admin/vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="resources/admin/js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="resources/admin/js/demo/datatables-demo.js"></script>

</body>

</html>
