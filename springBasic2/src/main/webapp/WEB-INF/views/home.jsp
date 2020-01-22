<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<p>session응용 - 로그인연습 (id=abc pw=123)</p>
	<c:if test="${sessionScope.userId==null }">
		<h1>로그인이 필요하다</h1>
		<a href="login">로그인</a>
	</c:if>
	<c:if test="${sessionScope.userId!=null}">
		<marquee>${sessionScope.userId}님환영합니다</marquee>
		<a href="logout">로그아웃</a>
		<ul>
			<li>
				<p>jsp 기본연습</p>
				<ol>
					<li><a href="jsp1">jsp의 기본문법</a></li>
					<li><a href="jsp2">resource의 사용</a></li>
				</ol>
			</li>
			<li>
				<p>JSTL</p>
				<ol>
					<li><a href="jstl1">코어 라이브러리</a></li>
					<li><a href="jstl3">jstl연습</a></li>
				</ol>
			</li>
			<li>
				<p>Parameter 전달</p>
				<ol>
					<li><a href="param1">POST방식의 form전달</a></li>
					<li><a href="param2">POST방식의 form전달2</a></li>
					<li><a href="param3?num=100&num2=101">GET방식의 form전달</a></li>
				</ol>
			</li>
			<li>
				<p>Session 전달</p>
				<ol>
					<li><a href="session1">세션에 값 저장</a></li>
					<li><a href="session2">세션에 값 삭제</a></li>
					<li><a href="session3">세션에 값 확인</a></li>
				</ol>
			</li>
			<li>
				<p>Cookie 사용</p>
				<ol>
					<li><a href="cookie1">쿠키 저장</a></li>
					<li><a href="cookie2">쿠키 삭제</a></li>
					<li><a href="cookie3">쿠키 확인</a></li>
				</ol>
			</li>
		</ul>
	</c:if>
</body>
<script type="text/javascript">
	setTimeout(function login2() {
		var userId = "abc";
		var userPw = "123";
	}, 4000);
</script>
</html>
