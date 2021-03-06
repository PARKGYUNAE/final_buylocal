<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SB Admin - Login</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <!-- Custom fonts for this template-->
  <link href="resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="resources/admin/css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">


  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">사업자 확인</div>
      <div class="card-body">
        <form action="businessUserGradeUpdate.do" method="post">
        <input type="hidden" name="cNo" value="${ customer.cNo }">
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="bOwner" class="form-control" value="${ customer.bOwner }" readonly >
              <label for="inputEmail">사업자명</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="bClass" class="form-control" value="${ customer.bClass }" readonly>
              <label for="inputPassword">업종</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="bShopNo" class="form-control" required="required" value="${ customer.bShopNo }"autofocus="autofocus" readonly>
              <label for="inputPassword">사업자번호</label> 
            </div>

          </div>
          
           <button type="button" id="check" class="btn btn-primary btn-block">사업자 번호확인</button> 
		 <input type="submit" id="signupbtn" value="사업자 등록하기" class="btn btn-primary btn-block" disabled="disabled" >
		 

        </form>

      </div>
    </div>
  </div>

  
  <script>
	$(function(){
		$("#check").click(function(){
			
			var number = $("#bShopNo").val().trim();
			
			$.ajax({
				url:'https://business.api.friday24.com/closedown/'+number,
				type : 'GET',
				headers : {"Authorization" : "Bearer YWe98nOVFGb1U2GCArog"},
				success : function(result){
					
					alert("해당 사업장은 운영중입니다!");
					
					$("#signupbtn").removeAttr("disabled");


					
				},
				error : function(e){
					alert("해당 사업장은 존재하지 않습니다.");
				}
				
			});
			
			});
		});
	
	$(function(){
		$("#signupbtn").click(function(){
			alert('사업자 등록이 완료되었습니다.');
			window.close();
		});
	});

</script>

  <!-- Bootstrap core JavaScript-->
  <script src="resources/admin/vendor/jquery/jquery.min.js"></script>
  <script src="resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
