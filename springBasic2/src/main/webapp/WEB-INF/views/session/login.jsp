<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login" method="post" onsubmit="return popup()">
		아이디
		<input id="userId" name="userId" type="text"
			placeholder="아이디를 입력하세요">
		비밀번호
		<input id=userPw name="userPw" type="password"
			placeholder="비밀번호를 입력하세요">
		<input type="submit" value="로그인!">
	</form>
	<script type="text/javascript">
		function popup() {

			alert("로그인을 시도합니다.")

		}
	</script>
</body>
</html>