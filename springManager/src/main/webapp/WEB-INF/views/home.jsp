<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<link href="
<c:url value="/resources/css/style.css"/> "
	rel="stylesheet">
</head>
<body>
	<h1>SE Bank Step</h1>
	<hr style="margin: 0">
	<div class="divWhite">
		<c:if test="${login.length>0}">
	 ${login}
</c:if>
		<c:if test="${sessionScope.name==null }">
			<ul style="margin: 0">
				<li><a href="member/input">회원가입</a></li>
				<li><a href="member/login">로그인</a></li>
				<li><a href="admin/adminMain">관리자메뉴</a></li>
			</ul>


		</c:if>
		<c:if test="${sessionScope.name!=null }">
			<div>${sessionScope.name}(${sessionScope.id})님로그인중</div>
			<ul style="margin: 0">
				<li><a href="<c:url value='/member/logout' />">로그아웃</a></li>
				<li><a href="<c:url value="/member/updating"/>">정보조회, 수정</a></li>
				<li><a href="<c:url value="/board/boardList" />">게시판</a></li>

			</ul>
		</c:if>
	</div>
	<hr style="margin: 0">

	<script type="text/javascript">
		
	</script>
</body>
</html>
