<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">
</head>

<body>
	<div class="divCenter">
		<h1>[게시판]</h1>
		<p>
			전체 : ${listSize }
			<input type="button" value="글쓰기" onclick="goWriteForm()">
		</p>
		<table class="set_table">
			<tr>
				<td class="td1" width="80">번호</td>
				<td class="td1" width="300;">제목</td>
				<td class="td1" width="80">작성자</td>
				<td class="td1" width="80">조회수</td>
				<td class="td1" width="120">등록일</td>
			</tr>
			<c:forEach var="i" items="${list }">
				<tr>
					<td class="td2" style="text-align: center;">${i.boardnum }</td>
					<td class="td2" class="title">
						 <a href="boardSearch?boardnum=${i.boardnum }"> ${i.title }</a>
					</td>
					<td class="td2" style="text-align: center;">${i.id }</td>
					<td class="td2" style="text-align: center;">${i.hits }</td>
					<td class="td2" style="text-align: center;">${i.inputdate }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script type="text/javascript">
		function goWriteForm() {

			location.href = "boardWrite";
		}
	</script>
</body>
</html>