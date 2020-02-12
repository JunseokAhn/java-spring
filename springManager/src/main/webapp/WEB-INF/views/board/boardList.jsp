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
		<div class="divIn">
			<h1>[게시판]</h1>
			<span style="float: left;"> 전체 : ${listSize } </span>
			<input type="button" style="float: right;" value="글쓰기"
				onclick="goWriteForm()">
			<br>
			<a href="<c:url value="/"/>">
				<img alt="" src="
			<c:url value="/resources/img/home.png"/>"
					class="goMain">
			</a>

			<hr>
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
						<td class="td2" class="title"
							onclick="location.href= 'boardSearch?boardnum=${i.boardnum }'"
							onmouseover="this.style.color='blue';"
							onmouseout="this.style.color='black';" style="cursor: pointer;">${i.title }</td>
						<td class="td2" style="text-align: center;">${i.id }</td>
						<td class="td2" style="text-align: center;">${i.hits }</td>
						<td class="td2" style="text-align: center;">${i.inputdate }</td>
					</tr>
				</c:forEach>
			</table>
			<a
				href="boardList?page=${PN.currentPage-10}&searchText=${searchText}">
				<img src="<c:url value="/resources/img/leftDoubleArrow.png"/>"
					width="30px;">
			</a>
			<a href="boardList?page=${PN.currentPage-5}&searchText=${searchText}">
				<img src="<c:url value="/resources/img/leftArrow.png"/>"
					width="30px;">
			</a>
			<span style="font-size: 140%;">
				<c:forEach var="i" begin="${PN.startPageGroup}"
					end="${PN.endPageGroup }">
					<a href="boardList?page=${i}" style="color: black;">${i}</a>
				</c:forEach>
			</span>
			<a href="boardList?page=${PN.currentPage+5}&searchText=${searchText}">
				<img src="<c:url value="/resources/img/rightArrow.png"/>"
					width="30px;">
			</a>
			<a
				href="boardList?page=${PN.currentPage+10}&searchText=${searchText}">
				<img src="<c:url value="/resources/img/rightDoubleArrow.png"/>"
					width="30px;">
			</a>
			<hr>
			<form action="boardList">
				제목 :
				<input name="searchText">
				<input type="submit" value="검색">
			</form>
			<hr>
		</div>
	</div>
	<script type="text/javascript">
		function goWriteForm() {

			location.href = "boardWrite";
		}
	</script>
</body>
</html>