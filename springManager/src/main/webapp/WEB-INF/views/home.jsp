<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<c:if test="${login.length>0}">
	 ${login}
</c:if>
	<c:if test="${sessionScope.name==null }">
		<a href="input">회원가입</a>
		<a href="login">로그인</a>
		<a href="admin">관리자메뉴</a>
	</c:if>
	<c:if test="${sessionScope.name!=null }">
		<a href="logout">로그아웃</a>
		<a href="search">정보조회</a>
		<a href="">글쓰기</a>
	</c:if>
	<hr>
	
	<script type="text/javascript">
	
	</script>
</body>
</html>
