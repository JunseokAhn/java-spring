<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="
<c:url value='/resources/css/style.css' />"
	rel="stylesheet">
</head>
<body>
	<h1>[글쓰기]</h1>
	<div >
		<form action="boardWrite" method="post">
			<table>
				<tr>
					<td class="td1" >제목</td>
					<td class="td2">
						<input id="title" name="title">
					</td>
				</tr>
				<tr>
					<td class="td1">내용</td>
					<td class="td2">
						<input id="contents" name="contents">
					</td>
				</tr>
				<tr>
					<td class="td1">파일첨부</td>
					<td class="td2">
						<input id="originalfile" type="button" value="파일 선택">
						<c:if test="${savedfile==null}">
				선택된 파일 없음</c:if>
						<c:if test="${savedfile!=null}">
				${savedfile}</c:if>
					</td>
				</tr>
			</table>
			<input type="submit" value="저장">
		</form>
	</div>
</body>
</html>