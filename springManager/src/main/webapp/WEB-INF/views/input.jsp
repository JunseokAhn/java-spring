<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
.td1 {
	background-color: rgb(153, 153, 153);
}

.td2 {
	background-color: rgb(202, 202, 202);
	text-align: left;
}
</style>
</head>
<body>
	<div style="text-align: center;">
		<h1>회원가입</h1>
		<form action="input" method="post" onsubmit="signUp()">
			<table style="margin: 0 auto;">
				<tr>
					<td class="td1">ID</td>
					<td class="td2">
						<input id="userId" name="id" type="text" placeholder="ID중복확인 이용">
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
						<select name="phone1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="019">019</option>
						</select>
						<input id="userPhone2">
						<input id="userPhone3">
					</td>
				</tr>
			</table>
			<input type="button" value="가입" onclick="signUp()">
			<input type="button" value="다시 쓰기" onclick="redoing()">
		</form>

		<script type="text/javascript">
			function doubleCheck(userId) {

			}
			function signUp() {

				return true;
			}
			function redoing() {

			}
		</script>
	</div>
</body>
</html>