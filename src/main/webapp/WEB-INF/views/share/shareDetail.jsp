<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <td><textarea id="rContent"></textarea>></td>
                    <td><button type="button" id="rSubmit">댓글등록</button></td>
                </tr>
                
                
                
                
         <!-- 더미값  -->
       <%--        <tr>
                    <td>${sb.cName }</td>
                    <td>사겠습니다</td>
                    <td>${sb.sbDate }</td>
                </tr>
                <tr>
                	<td>└ Re ${sb.cName } </td>
                	<td>ㅇㅇ</td>
                	 <td>${sb.sbDate }</td>
                </tr> 
            </table> --%>
                <!--더미값  -->
            
            
            
			<table border="4" id="replyTable">
			         <thead>
			            <tr>
			               <td colspan="4"> <b id='rCount'></b>
			               </td>
			            </tr>
			            <tr>
			            	<td colspan="3"><b id='rCount2'>└ Re : </b> </td>
			            	
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
		 $(function(){
		     // 초기 페이지 로딩 시 댓글 불러오기
		     getReplyList();
		     
		     // 타 회원이 작성한 댓글도 지속적으로 불러오기 위한 요청
		     setInterval(function(){
		        getReplyList();
		     }, 10000);
         
         // 댓글 등록 ajax
         $("#rSubmit").on("click", function(){
            var rContent = $("#rContent").val();
            var sbNo = ${ sb.sbNo };
            
            $.ajax({
               url:"addReply.do",
               data:{rContent:rContent,
            	   sbNo:sbNo},
               type:"post",
               success:function(data){
                  console.log(data);
                  if(data == 'success'){
                     // 댓글 등록 성공 시 다시 댓글 리스트 불러오기
                     getReplyList();
                     $("#rContent").val("");
                  }
               },
               error:function(){
                  console.log('ajax 통신 실패!');
               }
            });
         });
         
      });

      
      // 댓글 리스트 불러오는 ajax 함수
      function getReplyList(){
         var sbNo = ${ sb.sbNo};
         
         $.ajax({
            url:"rList.do",
            data:{sbNo:sbNo},
            dataType:"json",
            success:function(data){
               console.log(data);
               
               $tableBody = $("#replyTable tbody");
               $tableBody.html("");
               
               $("#rCount").text("댓글(" + data.length+")");
               $("#rCount2").text("대댓글개수(" + data.length+")");
               
               if(data.length >0){
                  for(var i in data){
                	 /*  cName =   JSON.stringify($("<td width='100'>").text(data[i].cName)); */
                	  /* cName =   $("<td id='hashid' width='100'>").text(data[i].cName); */
                	  
                      var rLevel = data[i].rLevel 
                     
                   
                    
                     
                     $tr = $("<tr>");
                     $cName = $("<td width='100'>").text(data[i].cName);
                     $rContent = $("<td>").text(data[i].rContent);
                      $button = $("<td>").html("<button type='button' class='hashStandard' onclick='answerReply(this)'>답글달기</button>"); 
                     
                     
                     $rCreateDate = $("<td width='100'>").text(data[i].rCreateDate);
                     
                     $tr.append($cName);
                     $tr.append($rContent);
                     $tr.append($rCreateDate);
                      $tr.append($button); 
                     
                       if(data[i].rLevel  == "1") { 
                    	   $tr = $("<tr>");
                           $cName = $("<td width='120'>").text("└ Re : "+data[i].cName);
                           $rContent = $("<td>").text(data[i].rContent);
                           
                    	   $tr.append($cName);
                           $tr.append($rContent);
                           $tr.append($rCreateDate);
                           $tr.append("&nbsp;");
                   }  
          			   
                     -
                     
                     $tableBody.append($tr);
                     
                    
                     
                     
                     
                 /*     switch(rLevel) {
                     case : 0
                     document.getWriter("댓글이고");
                     break;
                     
                     case : 1
                     document.getWriter("대댓글이고");
                     break;
                    	 
                     } */
                     
                     
                /* 	  if(data[i].rLevel == "0" || data[i].rLevel != "1") {
                     
                     $tr.append($cName);
                     $tr.append($rContent);
                     $tr.append($rCreateDate);
                     $tableBody.append($tr);

                	  }if(data[i].rLevel == "1") { */
                    /*  $tr = $("<tr>");
                     $cName = $("<td width='100'>").text("└ Re" +  data[i].cName);
                     $rContent = $("<td>").text(data[i].rContent);
                     $rCreateDate = $("<td width='100'>").text(data[i].rCreateDate);
                     $td = $("<td>"); */
                  /*    
                     $tr.append($cName).text("└ Re : ") + $tr.append($cName);
                     $tr.append($rContent);
                     $tr.append($rCreateDate);
                	  }  */

                	  
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
      
		 
		//대 댓글작성 위치 / 
		function answerReply(e) {
			var hashName = $(e).parent().parent().children().eq(0).text();
			var csseffect = $(e).parent().parent().children();
			
			csseffect.css("color","red");
			
			console.log(csseffect);
			/* console.log(hashName); */
			
			$("#rContent").val("@"+hashName);
			
			
			
			/* 
			$("#hashtag").children().children();
			console.log($("#hashtag").children().children()); */
			
			
		}
   </script>
        
    </body>
</html>