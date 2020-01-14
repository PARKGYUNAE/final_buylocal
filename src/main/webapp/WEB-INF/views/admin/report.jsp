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
          <li class="breadcrumb-item active">Tables</li>
        </ol>


       <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
          		  신고 리스트</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>신고 분류</th>
                    <th>신고 제목</th>
                    <th>신고자</th>
                    <th>신고 일자</th>
                    <th>신고 여부</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>신고 분류</th>
                    <th>신고 제목</th>
                    <th>신고자</th>
                    <th>신고 일자</th>
                    <th>신고 여부</th>
                  </tr>
                </tfoot>
                <tbody>
                  <tr>
                    <td>욕설</td>
                    <td>System Architect</td>
                    <td>Edinburgh</td>
                    <td>61</td>
                    <td>2011/04/25</td>
                  </tr>
                
                  <tr>
                    <td>사기</td>
                    <td>Systems Administrator</td>
                    <td>London</td>
                    <td>21</td>
                    <td>2009/02/27</td>
                  </tr>
                  <tr>
                    <td>광고</td>
                    <td>Developer</td>
                    <td>San Francisco</td>
                    <td>30</td>
                    <td>2010/07/14</td>
                  </tr>
                  <tr>
                    <td>기타...</td>
                    <td>Regional Director</td>
                    <td>Edinburgh</td>
                    <td>51</td>
                    <td>2008/11/13</td>
                  </tr>
                  <tr>
                    <td>기타</td>
                    <td>Javascript Developer</td>
                    <td>Singapore</td>
                    <td>29</td>
                    <td>2011/06/27</td>
                  </tr>
                  <tr>
                    <td>기타</td>
                    <td>Customer Support</td>
                    <td>New York</td>
                    <td>27</td>
                    <td>2011/01/25</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>
        
        
        
        

        <p class="small text-center text-muted my-5">
          <em>More table examples coming soon...</em>
        </p>

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
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
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
