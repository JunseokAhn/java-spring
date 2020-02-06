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
				<td class="td2" width="500">${id}</td>
			</tr>
			<tr>
				<td class="td1">작성일</td>
				<td class="td2">${inputdate }</td>
			</tr>
			<tr>
				<td class="td1">조회수</td>
				<td class="td2">${hits }</td>
			</tr>
			<tr>
				<td class="td1">제목</td>
				<td class="td2">${title }</td>
			</tr>
			<tr>
				<td class="td1">내용</td>
				<td class="td2">${contents }</td>
			</tr>
			<tr>
				<td class="td1">파일첨부</td>
				<td class="td2"></td>
			</tr>
		</table>
	</div>
</body>
</html>