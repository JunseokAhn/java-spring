<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		<h1>회원가입</h1>
		<form action="login" method="post">
			<table style="margin: 0 auto;">
				<tr>
					<td class="td1">ID</td>
					<td class="td2">
						<input id="userId" name="id" type="text" placeholder="ID 입력">
					</td>
				</tr>
				<tr>
					<td class="td1">비밀번호</td>
					<td class="td2">
						<input id="userPw" name="password" type="password"
							placeholder="비밀번호 입력">
					</td>
				</tr>
			</table>
			<input type="submit" value="로그인">
			<input type="button" value="다시 쓰기" onclick="redoing()">
		</form>
	</div>
</body>
</html>