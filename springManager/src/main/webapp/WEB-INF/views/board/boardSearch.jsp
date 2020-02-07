<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>
<body>
	<div class="divCenter">
		<h1>[게시판 글 읽기]</h1>
		<table class="set_table">
			<tr>
				<td class="td1">작성자</td>
				<td class="td2" width="500">${vo.id}</td>
			</tr>
			<tr>
				<td class="td1">작성일</td>
				<td class="td2">${vo.inputdate }</td>
			</tr>
			<tr>
				<td class="td1">조회수</td>
				<td class="td2">${vo.hits }</td>
			</tr>
			<tr>
				<td class="td1">제목</td>
				<td class="td2">${vo.title }</td>
			</tr>
			<tr>
				<td class="td1">내용</td>
				<td class="td2">${vo.contents }</td>
			</tr>
			<tr>
				<td class="td1">파일첨부</td>
				<td class="td2"></td>
			</tr>
		</table>
		<c:if test="${vo.id==sessionScope.id }">
			<input type="button" value="삭제" onclick="boardDelete()">
			<input type="button" value="수정" onclick="boardUpdate()">
			<input type="button" value="목록으로" onclick="goBoardList()">
		</c:if>
		<c:if test="${vo.id!=sessionScope.id }">
			<input type="button" value="목록으로" onclick="goBoardList()">
		</c:if>
	</div>
	<script type="text/javascript">
		function boardDelete(boardnum) {
			location.href = "boardDelete?boardnum=${vo.boardnum}&id=${vo.id}";
		}
		function boardUpdate() {
			location.href = "boardUpdate?boardnum=${vo.boardnum}&id=${vo.id}";
		}
		function goBoardList() {
			location.href="boardList"
		}
	</script>
</body>
</html>