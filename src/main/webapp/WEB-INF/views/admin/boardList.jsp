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
          <li class="breadcrumb-item active">Charts</li>
        </ol>


  <!-- Logout Modal-->
<table class="menu" align="center">
			<tr>
				<td width="400" height="400" align="center">게시글 관리
					<div id="menu1">
						<c:url var="normalUserInfo" value="content.do"/>
						<a href="${ content }">
							<img id="menu1" src="../../resources/file/image/user.png"
							width="250" height="250">
						</a>
					</div>
				</td>
				<td width="400" height="400" align="center">Q & A
					<div id="menu2">
						<c:url var="normalUserBuy" value="qna.do"/>
						<a href="${qna}">
							<img id="menu2" src="../../resources/file/image/video.png"
							width="250" height="250">
						</a>
					</div>
				</td>
				
					<td width="400" height="400" align="center">신고 리스트
					<div id="menu2">
						<c:url var="normalUserBuy" value="report.do"/>
						<a href="${report}">
							<img id="menu2" src="../../resources/file/image/video.png"
							width="250" height="250">
						</a>
					</div>
				</td>
				
				
			</tr>
			</table>
		</div>
	</div>
</div>

  <!-- Bootstrap core JavaScript-->
  <script src="resources/admin/vendor/jquery/jquery.min.js"></script> <!-- 리스트들 보는 곳 -->
  <script src="resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


  <!-- Core plugin JavaScript-->
  <script src="resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="resources/admin/vendor/chart.js/Chart.min.js"></script>
  <script src="resources/admin/vendor/datatables/jquery.dataTables.js"></script>
  <script src="resources/admin/vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="resources/admin/js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="resources/admin/js/demo/datatables-demo.js"></script>
  <script src="resources/admin/js/demo/chart-area-demo.js"></script>


</body>

</html>
