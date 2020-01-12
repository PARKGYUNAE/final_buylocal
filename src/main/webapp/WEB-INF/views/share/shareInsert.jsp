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
</style>
</head>
<body>
<c:import url="../common/menubar.jsp" />
<br><br>
	<h1 align="center">게시글 쓰기</h1>
	<br>
	
	<form action="shareInsert.do" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>분류</td>
				<td>
				<select>
					<option value="팝니다">팝니다</option>
					<option value="삽니다">삽니다</option>
					<option value="나눕니다">나눕니다</option>
					<option value="정보공유">정보공유</option>
					<option value="기타">기타</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="sbTitle" size="50" value="${sb.sbTitle }"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="sbWriter" size="50" value="${sb.cName }"></td>
				<!-- 작성자는 수정하면 안되니 LoginUser잘받아오면  readonly로 변경하기   -->
			</tr>
			<tr>
				<td>내용</td>
				<!-- <td><textarea cols="50" rows="7" name="rContent" placeholder="내용을 입력하세요"></textarea></td> -->
				
				  <td width="1000" height="500"> <textarea name="ir1" id="ir1" rows="10" cols="100">${sb.sbContent }ㅎㅇ</textarea></td> 
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">등록하기</button> &nbsp;
					<!-- <a href="shareboard.do">목록으로</a> -->
					<!-- <button onclick="location.href='shareboard.do';">목록으로</button> -->
					<button type="button" onclick="location.href='shareboard.do';">목록으로</button>
				</td>
			</tr>
		</table>
	
	</form>
			
        <script type="text/javascript">
			var oEditors = [];
			nhn.husky.EZCreator.createInIFrame({
			 oAppRef: oEditors,
			 elPlaceHolder: "ir1",
			 sSkinURI: "resources/se2/SmartEditor2Skin.html",
			 fCreator: "createSEditor2"
			});
		</script>
			
			



</body>
</html>