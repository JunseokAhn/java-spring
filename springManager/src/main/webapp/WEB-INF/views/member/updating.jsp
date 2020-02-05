<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
		<h1>정보조회, 수정</h1>
		<form action="updating" method="post" onsubmit="return updating()">
			<table style="margin: 0 auto;">
				<tr>
					<td class="td1">ID</td>
					<td class="td2">
						<input id="userId" name="id" type="text" disabled
							placeholder="${sessionScope.id}">
					</td>
				</tr>
				<tr>
					<td class="td1">비밀번호</td>
					<td class="td2">
						<input id="userPw" name="password" type="password"
							placeholder="원래 비밀번호 입력">
						<br>
						<input id="userPw2" name="password2" type="password"
							placeholder="변경할 비밀번호 입력">
					</td>
				</tr>
				<tr>
					<td class="td1">이름</td>
					<td class="td2">
						<input id="userName" name="name" type="text"
							placeholder="${sessionScope.name }">
					</td>
				</tr>
				<tr>
				<tr>
					<td class="td1">이메일</td>
					<td class="td2">
						<input id="userEmail" name="email" type="text"
							placeholder="${sessionScope.email }">
					</td>
				</tr>
				<tr>
					<td class="td1">주소</td>
					<td class="td2">
						<input id="userAddress" name="address" type="text"
							placeholder="${sessionScope.address }" style="width: 97%">
					</td>
				</tr>
				<tr>
					<td class="td1">휴대폰 번호</td>
					<td class="td2">
						<input id="Phone1" name="Phone1">
						-
						<input id="Phone2" name="Phone2">
						-
						<input id="Phone3" name="Phone3">
					</td>
				</tr>
			</table>
			<input type="hidden" id="phone" name="phone">
			<input type="submit" value="수정">
			<input type="button" value="다시 쓰기" onclick="redoing()">
		</form>
	</div>
	<script type="text/javascript">
		var phone = '${sessionScope.phone}'
		var doc1 = document.getElementById("Phone1");
		var doc2 = document.getElementById("Phone2");
		var doc3 = document.getElementById("Phone3");

		var phoneNum = phone.split('-')

		doc1.placeholder = phoneNum[0];
		doc2.placeholder = phoneNum[1];
		doc3.placeholder = phoneNum[2];
		
		function updating(){
			var phone1 = document.getElementById('Phone1').value
			var phone2 = document.getElementById('Phone2').value
			var phone3 = document.getElementById('Phone3').value
			var phone = document.getElementById('phone')
		
			phone.value = phone1 +'-'+ phone2 +'-'+ phone3 
			var userPw = document.getElementById('userPw').value
			 if(${sessionScope.password}!=userPw){ 
				/* if(!${sessionScope.password}.equals(userPw)){ */
				alert('비밀번호 불일치')
				return false;
			}
			return true;
		}
		
		function redoing(){
			var userId = document.getElementById('userId')
			var userPw =  document.getElementById('userPw')
			var userPw2 = document.getElementById('userPw2')
			var userName = document.getElementById('userName')
			var userEmail = document.getElementById('userEmail')
			var userAddress = document.getElementById('userAddress')
			var Phone1 = document.getElementById('Phone1')
			var Phone2 = document.getElementById('Phone2')
			var Phone3= document.getElementById('Phone3')
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
