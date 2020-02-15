<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">

</head>
<body>
	<div class="divCenter">
		<div class="divIn">
			<a href="<c:url value="/admin/searchAll"/>">전체이용자 조회</a>
			<a href="<c:url value="/board/boardList"/>">게시판</a>

		</div>
	</div>
</body>
</html>