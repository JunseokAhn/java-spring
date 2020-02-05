<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>SE Bank Step</h1>
	<c:if test="${login.length>0}">
	 ${login}
</c:if>
	<c:if test="${sessionScope.name==null }">
		<ul>
			<li><a href="member/input">회원가입</a></li>
			<li><a href="member/login">로그인</a></li>
			<li><a href="member/admin">관리자메뉴</a></li>
		</ul>


	</c:if>
	<c:if test="${sessionScope.name!=null }">
		<div>${sessionScope.name}(${sessionScope.id})님로그인중</div>
		<ul>
			<li><a href="member/logout">로그아웃</a></li>
			<li><a href="<c:url value='/member/logout' />">로그아웃</a></li>
			<li><a href="<c:url value="/member/updating"/>">정보조회, 수정</a></li>
			<li><a href="board">게시판</a></li>

		</ul>
	</c:if>
	<hr>

	<script type="text/javascript">
		
	</script>
</body>
</html>
