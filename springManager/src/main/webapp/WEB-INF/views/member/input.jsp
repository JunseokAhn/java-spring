<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">

</head>
<body>
	<div class="divWhite" align="center">
		<h1>회원가입</h1>

		<form action="input" method="post">
			<table style="margin: 0 auto;">
				<tr>
					<td class="td1">ID</td>
					<td class="td2"><input id="userId" name="id" type="text" placeholder="ID중복확인 이용" readonly> <input type="button" value="ID중복확인" onclick="doubleCheck(userId)"></td>
				</tr>
				<tr>
					<td class="td1">비밀번호</td>
					<td class="td2"><input id="userPw" name="password" type="password" placeholder="비밀번호 입력"> <br> <input id="userPw2" name="password2" type="password" placeholder="비밀번호 다시 입력"></td>
				</tr>
				<tr>
					<td class="td1">이름</td>
					<td class="td2"><input id="userName" name="name" type="text" placeholder="이름 입력"></td>
				</tr>
				<tr>
				<tr>
					<td class="td1">이메일</td>
					<td class="td2"><input id="userEmail1" name="email" type="text" placeholder="이메일 입력"> @ <select id="userEmail2">
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="daum.net">daum.net</option>
						</select></td>
				</tr>
				<tr>
					<td class="td1">주소</td>
					<td class="td2"><input type="radio" name="address" value="서울"> 서울 <input type="radio" name="address" value="대전"> 대전 <input type="radio" name="address" value="대구"> 대구 <input type="radio" name="address" value="부산"> 부산</td>
				</tr>
				<tr>
					<td class="td1">휴대폰 번호</td>
					<td class="td2"><select id="Phone1" name="Phone1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="019">019</option>
						</select>- <input id="Phone2" name="Phone2"> - <input id="Phone3" name="Phone3"></td>
				</tr>
			</table>
			<input type="hidden" id="phone" name="phone">
			<input type="button" value="가입" onclick="signUp()">
			<input type="button" value="다시 쓰기" onclick="redoing()">
		</form>
	</div>
	<a href="<c:url value="/"/>">
		<img alt="" src="
			<c:url value="/resources/img/home.png"/>" class="goMain">
	</a>
	<script type="text/javascript">
		function doubleCheck(userId) {

			window.open('doubleCheck', 'hello',
					'top=200, width=400, height=150, resizable=no');
		}
		function signUp() {
			//조건 = 미입력시 가입불가 
			// id = 문자+숫자조합 
			// pw =문자+숫자조합

			var id = document.getElementById("userId")
			if (id.value.length == 0) {
				alert('ID를 입력해주세요')
				id.focus();
				return false;
			}
			var flag = 0;
			for (var i = 0; i < id.value.length; i++) {
				if (isNaN(id.value[i])) {
					flag = 1;
				}
			}
			if (flag == 0) {
				alert('ID는 문자와 숫자를 조합해주세요')
				id.focus();
				return false;
			}
			flag = 0;
			for (var i = 0; i < id.value.length; i++) {
				if (!isNaN(id.value[i])) {
					flag = 1;
				}
			}
			if (flag == 0) {
				alert('ID는 문자와 숫자를 조합해주세요')
				id.focus();
				return false;
			}

			var pw = document.getElementById("userPw")
			if (pw.value.length == 0) {
				alert('비밀번호를 입력해주세요')
				pw.focus();
				return false;
			}
			flag = 0;
			for (var i = 0; i < pw.value.length; i++) {
				if (isNaN(pw.value[i])) {
					flag = 1;
				}
			}
			if (flag == 0) {
				alert('패스워드는 문자와 숫자를 조합해주세요')
				pw.focus();
				return false;
			}
			flag = 0;
			for (var i = 0; i < pw.value.length; i++) {
				if (!isNaN(pw.value[i])) {
					flag = 1;
				}
			}
			if (flag == 0) {
				alert('패스워드는 문자와 숫자를 조합해주세요')
				pw.focus();
				return false;
			}

			var pw2 = document.getElementById("userPw2")
			if (pw2.value.length==0) {
				alert('비밀번호 확인을 입력해주세요')
				pw2.focus();
				return false;
			}
			if (pw.value != pw2.value) {
				alert('입력된 비밀번호가 다릅니다')
				pw2.focus();
				return false;
			}
			var email1 = document.getElementById("userEmail1")
			var email2 = document.getElementById("userEmail2").value

			var email = email1.value + '@' + email2

			flag = 0;
			for (var i = 0; i < email.length; i++) {
				if (isNaN(email)) {
					flag = 1;
				}
			}
			if (flag == 0) {
				alert('email은 문자와 숫자를 조합해주세요')
				email1.focus();
				return false;
			}
			
			//에러 > 특수문자가 문제가되는것같다.
			flag = 0;
			for (var i = 0; i < email.length; i++) {
				if (!isNaN(email)) {
					flag = 1;
				}
			}
			if (flag == 0) {
				alert('email은 문자와 숫자를 조합해주세요2')
				email1.focus();
				return false;
			}
			var address = document.getElementsByName("address")
			for (var i = 0; i < address.value.length; i++) {
				address = address.value[i];
			}
			alert(address);

			var phone1 = document.getElementById('Phone1').value
			var phone2 = document.getElementById('Phone2').value
			var phone3 = document.getElementById('Phone3').value
			var phone = document.getElementById('phone')
			phone.value = phone1 + '-' + phone2 + '-' + phone3

			console.log(id + pw + email + address + phone)
			alert('sign메소드 동작확인')
			return false;
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