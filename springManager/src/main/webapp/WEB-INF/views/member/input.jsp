<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">

</head>
<body>
	<div class="divCenter">
		<h1>회원가입</h1>
		<form action="input" method="post" onsubmit="return signUp();">
			<table style="margin: 0 auto;">
				<tr>
					<td class="td1">ID</td>
					<td class="td2">
						<input id="userId" name="id" type="text" placeholder="ID중복확인 이용"
							readonly>
						<input type="button" value="ID중복확인" onclick="doubleCheck(userId)">
					</td>
				</tr>
				<tr>
					<td class="td1">비밀번호</td>
					<td class="td2">
						<input id="userPw" name="password" type="password"
							placeholder="비밀번호 입력">
						<br>
						<input id="userPw2" name="password2" type="password"
							placeholder="비밀번호 다시 입력">
					</td>
				</tr>
				<tr>
					<td class="td1">이름</td>
					<td class="td2">
						<input id="userName" name="name" type="text" placeholder="이름 입력">
					</td>
				</tr>
				<tr>
				<tr>
					<td class="td1">이메일</td>
					<td class="td2">
						<input id="userEmail" name="email" type="text"
							placeholder="이메일 입력">
					</td>
				</tr>
				<tr>
					<td class="td1">주소</td>
					<td class="td2">
						<input id="userAddress" name="address" type="text"
							placeholder="주소 입력" style="width: 97%">
					</td>
				</tr>
				<tr>
					<td class="td1">휴대폰 번호</td>
					<td class="td2">
						<select id="Phone1" name="Phone1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="019">019</option>
						</select>-
						<input id="Phone2" name="Phone2">
						-
						<input id="Phone3" name="Phone3">
					</td>
				</tr>
			</table>
			<input type="hidden" id="phone" name="phone">
			<input type="submit" value="가입">
			<input type="button" value="다시 쓰기" onclick="redoing()">
		</form>
	</div>
	<script type="text/javascript">
		function doubleCheck(userId) {

			window.open('doubleCheck', 'hello',
					'top=200, width=400, height=150, resizable=no');
		}
		function signUp() {
			var phone1 = document.getElementById('Phone1').value
			var phone2 = document.getElementById('Phone2').value
			var phone3 = document.getElementById('Phone3').value
			var phone = document.getElementById('phone')
			phone.value = phone1 + '-' + phone2 + '-' + phone3

			return true;
		}

		function redoing() {
			var userId = document.getElementById('userId')
			var userPw = document.getElementById('userPw')
			var userPw2 = document.getElementById('userPw2')
			var userName = document.getElementById('userName')
			var userEmail = document.getElementById('userEmail')
			var userAddress = document.getElementById('userAddress')
			var Phone1 = document.getElementById('Phone1')
			var Phone2 = document.getElementById('Phone2')
			var Phone3 = document.getElementById('Phone3')
			userId.value = '';
			userPw.value = '';
			userPw2.value = '';
			userName.value = '';
			userEmail.value = '';
			userAddress.value = '';
			Phone1.value = '';
			Phone2.value = '';
			Phone3.value = '';
		}
	</script>
</body>
</html>