<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="
<c:url value="/resources/css/style.css"/> "
	rel="stylesheet">
</head>
<body>
	<div style="text-align: center;" class="divWhite">
		<h1>로그인</h1>
		<form action="login" method="post" onsubmit="return redundancy()">
			<table style="margin: 0 auto;">
				<tr>
					<td class="td1">ID</td>
					<td class="td2"><input id="userId" name="id" type="text"
							placeholder="ID 입력"></td>
				</tr>
				<tr>
					<td class="td1">비밀번호</td>
					<td class="td2"><input id="userPw" name="password"
							type="password" placeholder="비밀번호 입력"></td>
				</tr>
			</table>
			<input type="submit" value="로그인">
			<input type="button" value="다시 쓰기" onclick="redoing()">
		</form>
	</div>
	<a href="<c:url value="/"/>"><img alt=""
		src="
			<c:url value="/resources/img/home.png"/>" class="goMain"></a>
	<script type="text/javascript">
		function redoing() {
			var userId = document.getElementById('userId')
			var userPw = document.getElementById('userPw')

			userId.value = '';
			userPw.value = '';

		}
		
	</script>
</body>
</html>