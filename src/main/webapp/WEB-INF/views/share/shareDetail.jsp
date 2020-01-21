<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mylocal.myL.share.model.vo.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="resources/se2/js/HuskyEZCreator.js" charset="utf-8"></script>

<style>
	table {
		margin:auto;
	}
    #rhead {
        background: gray;

    }
    #cssTest {
    	background:red;
    	color:white;
    }
</style>
</head>
<body>
    <c:import url="../common/menubar.jsp" />
    <br><br>
        <h1 align="center">게시글 상세</h1>
        <br>
            
            <table>
            <c:url var="sblist" value="shareboard.do">
            <c:param name="sbNo" value="${ sb.sbNo }"/>
            <c:param name="page" value="${ currentPage }"/>
         </c:url>
                <tr>
                    <td>말머리</td>
                    <td>${sb.sbcgName }</td>
                </tr>
                <tr>
                    <td>제목</td>
                    <td><input type="text" name="sbTitle" size="50" value=${sb.sbTitle } readonly></td>
                </tr>
                <tr>
                    <td>작성자</td>
                    <td><input type="text" name="sbWriter" size="50"value=${sb.cName } readonly ></td>
                </tr>
                <tr>
                    <td>내용</td>
                   <%--  <td><textarea cols="50" rows="7" name="rContent" readonly>${sb.sbContent }</textarea></td> --%>
                   <%-- <td><textarea id="summernote" name="editordata"></textarea></td> --%>
                   
                   
                  <td width="1000" height="500"><textarea name="ir1" id="ir1" rows="10" cols="100">에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.</textarea></td>
                  <!--에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.  -->
                </tr>
                <tr>
                	<td colspan="2" align="center">
                <button type="button" onclick="location.href='shareUpdate.do';">수정</button>
                <button type="button">삭제</button>
                <button type="button">신고하기</button>
                <br><br>
                	</td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="button" value="이전글"> &nbsp;
                        <button type="button" onclick="location.href='shareboard.do';">목록으로</button>
                        <input type="button" value="다음글"> &nbsp;
                    </td>
                </tr>
                </table>

	<table border="2" align="center">
      <br><br>
        <h1 align="center">댓글영역</h1>
        <div id="rhead" align="center">댓글</div>
                <tr>
                    <td>댓글작성</td>
                    <td><textarea id="rContent"></textarea></td>
                    <td><button type="button" id="rSubmit">댓글등록</button></td>
                </tr>
                
			<table border="4" id="replyTable">
			         <thead>
			            <tr>
			               <td colspan="4"> <b id='rCount'></b>
			               </td>
			            </tr>
			            <tr>
			            	<td colspan="3"><b id='rCount2'></b> </td>
			            	
			            </tr>
			         </thead>
			         <tbody>
			            
			         </tbody>
			      </table>

        
        
        
        <script type="text/javascript">
			var oEditors = [];
			nhn.husky.EZCreator.createInIFrame({
			 oAppRef: oEditors,
			 elPlaceHolder: "ir1",
			 sSkinURI: "resources/se2/SmartEditor2Skin.html",
			 fCreator: "createSEditor2"
			});
		</script>
		
 <script>
		 rNo = $("#rNo").val();
		 refRno = $("#rNo").val();
		// setReply = $("#setReply").val();
 		
		 $(function(){
		     // 초기 페이지 로딩 시 댓글 불러오기
		     getReplyList();
		     
		     // 타 회원이 작성한 댓글도 지속적으로 불러오기 위한 요청
         
         // 댓글 등록 ajax
         $("#rSubmit").on("click", function(){
        	 // rNo = $('#rNo').val();
            var rContent = $("#rContent").val();
            var sbNo = ${ sb.sbNo };
            var rLevel = 0;
            $.ajax({
               url:"addReply.do",
               data:{rContent:rContent,
                	   sbNo:sbNo,
                	   rLevel:rLevel,
                	   rNo:rNo},
               type:"post",
               success:function(data){
                  console.log(data);
                  if(data == 'success'){
                     // 댓글 등록 성공 시 다시 댓글 리스트 불러오기
                     getReplyList();
                     $("#rContent").val("");
			 		console.log(rNo); 
                  }
               },
               error:function(){
                  console.log('ajax 통신 실패!');
               }
            });
         });
		     
      });
		
		//답글달기 버튼 클릭시 이벤트 
		function answerReply(e) {
			rrContent =$("<td>").html("<textarea id='rrContent'></textarea>");
			
			rNo = $(e).next().val(); //답글달기 클릭시 해당 rNo가 몇번인지를 담는 전역변수
			 console.log(rNo);
			
			 refRno =  $(e).next().val();
			 console.log("참조댓글 : "+refRno);
			
			 
			$tr = $("<tr>");
            $cName = cName;
            $rContent = $("<td>").html("<textarea id='rrContent'></textarea>");
          //  $rCreateDate = $("<td>").text("");
            $button = $("<td>").html("<button type='button' id='setReply' onclick='registerReply();'>답글등록</button>");
            
     	   $tr.append($cName);
            $tr.append($rContent);
        //    $tr.append($rCreateDate);
            $rContent.append($button);
		
            $(e).parent().parent().after($tr);
            
           $(e).prop("disabled", true);
           		
           position = $(e).parent().parent().after($tr);
		}
		// 같은 url요청을 답글달기 클릭시 진행
		function registerReply() {
			var rContent = $("#rrContent").val();
			var sbNo = ${ sb.sbNo };
			var rLevel = 1;
			$.ajax({
                url:"addReply.do",
                data:{rContent:rContent,
                 	   sbNo:sbNo,
                 	   refRno:refRno,
                 	   rLevel:rLevel,
                 	   rNo:rNo},
                       type:"post",
                       success:function(data){
					console.log(data);
					
                    if(data == 'success'){
						getReplyList();
						$("#rrContent").val("");
						console.log(rNo); 
						//여기에는 답글달기클릭시 다시 안생기게 ?
						//하나만생기게처리도 여기서할듯?
                    }
                       },
                       error:function(){
                          console.log('ajax 통신 실패!');
                       }
                    });
			}
		     
		
		
		// 댓글 리스트 불러오는 select하는 ajax 함수
	      function getReplyList(){
	         var sbNo = ${ sb.sbNo};
			
	         $.ajax({
	            url:"rList.do",
	            data:{sbNo:sbNo,
	            	rNo:rNo,
	            	refRno:refRno},
	            dataType:"json",
	            success:function(data){
	               console.log(data);
	               
	               $tableBody = $("#replyTable tbody");
	               $tableBody.html("");
	               
	               $("#rCount").text("댓글(" + data.length+")");
	               
	               if(data.length >0){
	                  for(var i in data){
	                	  
	 		/*  등록날짜기준 현재시간과 차이를 구하기위해서 사용했던것.
	 		var old = new Date("1/18/2020").toJSON();
			var now = new Date().toJSON();
			
			var sec_gap = (now-old) /1000;
			var min_gap = (now-old) /1000 / 60;
			
			console.log(old);
			console.log(now);
			console.log(sec_gap);
			console.log(min_gap);  */
			
	                	 /*  cName =   JSON.stringify($("<td width='100'>").text(data[i].cName)); */
	                	  /* cName =   $("<td id='hashid' width='100'>").text(data[i].cName); */
	                	  
	                  //    $cName = $("<td width='120'>").text("└ Re : "+data[i].cName),
	                //      $rContent = $("<td>").text(data[i].rContent);
	                	  
	                	  
	                	  pastTime = $("<td width='100'>").text(data[i].rCreateDate); // 경과시간을 위한 일단 현재시간을 전역변수에담음
	                    
	                      if(data[i].rLevel == "0") { 
	                     $tr = $("<tr>");
	                     $cName = $("<td width='100'>").text(data[i].cName);
	                     $rContent = $("<td>").text(data[i].rContent);
	                     $rCreateDate = $("<td width='230'>").text(data[i].rCreateDate);
	                      $button = $("<td>").html("<button type='button' onclick='answerReply(this)'>답글달기</button>"
	                    		  +"<input type='hidden' id='rNo'  value='"+data[i].rNo+"'>"
	                    		  +"<input type='hidden' id='refRno' value='"+data[i].refRno+"'>" ); 
	                      
	                      //$rNo = $("<td>").html("<input type='hidden' id='rNo'  value='"+data[i].rNo+"'>");
	               //       $test = $("<tr>")
	               //       $css = $("<td colspan='5' id='cssTest'>").text("답글이 없습니다.");
	                      //$testDate = $("<td>").text(min_gap + "분 지남" + sec_gap+"초 지남");
	                      
	                     $tr.append($cName);
	                     $tr.append($rContent);
	                     $tr.append($rCreateDate);
	                      $tr.append($button); 
	                      //$tr.append($rNo);
	                      
	                    //  $test.append($testDate);
	                   //   $test.append($css);
	                      $tableBody.append($tr);
	                   }
	                     
	                  for(var j in data){
	                	  
	                	  cName = $("<td width='120'>").text("└ Re : "+data[j].cName);
	                	  $rContent = $("<td>").text(data[j].rContent);
	                	  
	                  if(data[i].rNo == data[j].refRno) { 
                   	   $tr = $("<tr>");
                          $cName = $("<td width='120'>").text("└ Re : "+data[j].cName);
                          $rContent = $("<td>").text(data[j].rContent);
                          $rCreateDate = $("<td width='230'>").text(data[j].rCreateDate);
                          
                   	   $tr.append($cName);
                          $tr.append($rContent);
                          $tr.append($rCreateDate);
                          
	                  $tableBody.append($tr);
	                  }
                  }  
	                  }
	               }else{
	                  $tr = $("<tr>");
	                  $rContent = $("<td colspan='3'>").text("등록된 댓글이 없습니다.");
	                  $tr.append($rContent);
	                  $tableBody.append($tr);
	               }
	               
	               
	            },
	            error:function(){
	               console.log("ajax 통신 실패!");
	            }
	         });
	         
	      }
	      
             
          </script>
    </body>
</html>